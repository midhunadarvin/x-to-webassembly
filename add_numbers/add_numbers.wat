(module ;; every webassembly program starts with a module , a module is represented as one big S-expression
  ;; This defines a function that takes in 2 parameters and returns a result 
  (func $add (param $lhs i32) (param $rhs i32) (result i32)
    local.get $lhs  ;; push the value of the local it read onto the stack
    local.get $rhs  
    i32.add         ;;  i32.add pops two i32 values (it implicitly grabs the previous two values pushed onto the stack), computes their sum (modulo 2^32) and pushes the resulting i32 value.
  )
  
  ;; exports the above function
  (export "add" (func $add))
)