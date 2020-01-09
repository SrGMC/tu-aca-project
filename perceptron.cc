/*
 *                     GNU GENERAL PUBLIC LICENSE
 *                     Version 3, 29 June 2007

 * Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
 * Everyone is permitted to copy and distribute verbatim copies
 * of this license document, but changing it is not allowed.
 *
 * Author: Álvaro Galisteo
 */

#include <cmath>
#include "cpu/pred/perceptron.hh"

Perceptron::Perceptron(unsigned n) {
    weights.resize(n);
    size = n;
    for (int i = 0; i < n; ++i) {
        weights[i] = 1;
    }
    invalid = true;
}

int 
Perceptron::getPrediction(unsigned nodes)
{   
    if (!invalid) {
        return y;
    }

    y = 0;
    /* For every element, get the bit corresponding for every position, 
     * convert into a value of 1 or -1, and multiply by the corresponding 
     * weight. Then add into y, which will be returned */
    for (int i = 0; i < size; ++i) {
        unsigned mask = pow(2, i);
        bool bit = (nodes & mask) >> (i-1);
        int value = -1;
        
        if (bit) {
            value = 1;
        }

        y += value * weights[i];
    }

    invalid = false;

    return y;
}

void 
Perceptron::train(int y, bool outcome, unsigned nodes, int threshold)
{   
    /* Get the sign of y. Convert outcome to a value of 1 or -1 */
    bool yPositive = (y > 0) ? 1 : 0;
    int t = outcome ? 1 : -1;

    /* If the prediction was different than the outcome, add to the
     * corresponding weight, the value of the node multiplied by the outcome */
    if (yPositive != outcome || y <= threshold) {
        for (int i = 0; i < size; ++i) {
            unsigned mask = pow(2, i);
            bool bit = (nodes & mask) >> (i-1);
            int value = -1;
        
            if (bit) {
                value = 1;
            }

            weights[i] += t * value;
        }

        invalid = true;
    }
}