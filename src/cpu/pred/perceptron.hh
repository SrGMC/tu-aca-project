/*
 *                     GNU GENERAL PUBLIC LICENSE
 *                     Version 3, 29 June 2007

 * Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
 * Everyone is permitted to copy and distribute verbatim copies
 * of this license document, but changing it is not allowed.
 *
 * Author: Álvaro Galisteo
 */

#ifndef __CPU_PRED_PERCEPTRON_HH__
#define __CPU_PRED_PERCEPTRON_HH__

#include <vector>

class Perceptron
{
public:
    /**
     * Default constructor.
     */
    Perceptron(unsigned n);

    /**
     * Returns the prediction given by the perceptron
     * @param nodes 
     * @return Prediction, as a value between -1 and 1
     */
    int getPrediction(unsigned nodes);

    /**
     * Trains the perceptron with the given values
     * @param prediction Prediction given by the perceptron
     * @param outcome The final outcome of the execution
     * @param threshold Threshold used for forced training
     */
    void train(int y, bool outcome, unsigned nodes, int threshold);

private:
    /** Weights used in the perceptron */
    std::vector<int> weights;

    /** Number of weights in perceptron */
    unsigned size;

    /** y value of the perceptron */
    int y;

    /** Set to true if the y value is not valid, ie. perceptron was trained */
    bool invalid;
};

#endif // __CPU_PRED_PERCEPTRON_HH__