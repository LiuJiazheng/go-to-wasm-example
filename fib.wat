(module
  (import "env" "require" (func $require (param i32)))
  (import "env" "wasm_input" (func $wasm_input (param i32) (result i32)))
  (func $read_public_input (result i32)
    i32.const 1
    call $wasm_input
  )
  (func $read_private_input (result i32)
    i32.const 0
    call $wasm_input
  )
  (func $fibonacci (param $var0 i32) (result i32)
    (local $var1 i32) (local $var2 i32) (local $var3 i32) (local $var4 i32) 
    i32.const 1
    local.set $var4
    block $label0
      local.get $var0
      i32.const 1
      i32.lt_s
      br_if $label0
      block $label1
        local.get $var0
        i32.const 1
        i32.eq
        br_if $label1
        i32.const 0
        local.set $var3
        i32.const 1
        local.set $var2
        i32.const 1
        local.set $var4
        loop $label2
          local.get $var4
          local.tee $var1
          local.get $var3
          i32.add
          local.set $var4
          local.get $var1
          local.set $var3
          local.get $var2
          i32.const 1
          i32.add
          local.tee $var2
          local.get $var0
          i32.lt_s
          br_if $label2
        end $label2
      end $label1
      local.get $var4
      return
    end $label0
    i32.const 0
  )
  (func $zkmain (result i32)
    i32.const 10        ;; Push 10 onto the stack
    call $fibonacci     ;; Call fibonacci(10)
    i32.const 55        ;; Push 55 onto the stack
    i32.eq              ;; Check if fibonacci(10) == 55
    call $require       ;; Call require with the result of the equality check
    i32.const 0         ;; Return 0
  )

  (export "zkmain" (func $zkmain))
)
