(module
  (func $getAnswer (result i32)
    i32.const 42 ;; push the value of the i32 const 42 onto the stack, the function will return the last value in the stack
  )
  (func (export "getAnswerPlus1") (result i32)
    call $getAnswer ;; calls getAnswer and push the value of the result of getAnswer function call onto the stack 
    i32.const 1 ;; push the value of i32 const 1 onto the stack 
    i32.add ;; pops the last 2 values in the stack and does addition, pushes the result onto the stack, , the function will return the last value in the stack
  )
)