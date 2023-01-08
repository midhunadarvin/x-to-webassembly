(module
   (global $g (import "js" "global") (mut i32)) ;; import global from javascript and setting it in webassembly
   (func (export "getGlobal") (result i32)      ;; export function to retrieve global variable
        (global.get $g))                        
   (func (export "incrementGlobal")                   ;; export function to increment global variable
        (global.set $g
            (i32.add (global.get $g) (i32.const 1))))
)