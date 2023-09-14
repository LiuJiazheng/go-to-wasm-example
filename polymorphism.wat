(module
    ;; The common type we use throughout the sample.
    (type $int2int (func (param i32) (result i32)))

    ;; Simple function that adds its parameter to itself and returns the sum.
    (func $wasmtimes2 (type $int2int)
        (i32.add (local.get 0) (local.get 0))
    )

    ;; Simple function that adds its parameter with 1 itself.
    (func $wasmplus1 (type $int2int)
        (i32.add (local.get 0) (i32.const 1))
    )

    ;; Declare the dispatch function table to have 32 slots, and populate slots
    ;; 16 and 17 with functions.
    ;; This uses the WASMv1 default table 0.
    (table 32 funcref)
    (elem (i32.const 16) $wasmtimes2 $wasmplus1)

    ;; The following two functions are exported to JS; when JS calls them, they
    ;; invoke functions from the table.

    (func (export "functor") (type $int2int)
        i32.const 42

        ;; Place the value of the first parameter on the stack for the function
        ;; call_indirect will invoke.
        local.get 0

        ;; This call_indirect invokes a function of the given type from table at
        ;; offset 16. The parameters to this function are expected to be on
        ;; the stack.
        call_indirect (type $int2int)
    )

)
