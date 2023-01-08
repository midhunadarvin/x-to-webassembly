(module
  (import "console" "log" (func $log (param i32)))
  (func (export "logIt")
    i32.const 13 ;; push the value of i32 const 13 onto the stack 
    call $log    ;; calls $log
  )
)