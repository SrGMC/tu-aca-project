# Documentación

## `bool lookup(ThreadID tid, Addr branch_addr, void * &bp_history);`

Esta función es llamada cada vez que quiere obtener una predicción para la rama.

## `void uncondBranch(ThreadID tid, Addr pc, void * &bp_history);`

Esta función es llamada cuando se ha ejecutado una rama incondicional, por si es de interes para la actualización del BP (p.ej. en registro de historia global).

## `void btbUpdate(ThreadID tid, Addr branch_addr, void * &bp_history);`

Esta funcion es llamada cada vez que una entrada en BTB es inválida o no se encuentra, por si es de interes para la actualización del BP. Se puede ignorar.

## `void update(ThreadID tid, Addr branch_addr, bool taken, void *bp_history, bool squashed, const StaticInstPtr & inst, Addr corrTarget);`

Esta función es llamada cada vez que se resuelve la instrucción condicional, para actualizar el BP. Aquí se deben actualizar todas las tablas y resgistros correspondientes.

### Parametros

- `taken`: Booleano que indica si la ejecución fue `taken` o `not-taken`.
- `squashed`: Booleano que indica si la ejecución se predijo incorrectamente, por si es de interés restaurar valores especulativos en el BP.

## `void squash(ThreadID tid, void *bp_history);`

Esta función es llamada cada vez que se resuelve una instrucción condicional y se ha predecido incorrectamente, por si es de interes a la hora de restaurar el BP con valores especulativos guardados.