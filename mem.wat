(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (func $tinygo_getCurrentStackPointer (type 3) (result i32)
    global.get $__stack_pointer)
  (func $tinygo_unwind (type 1) (param i32)
    i32.const 65784
    i32.load8_u
    if  ;; label = @1
      call $asyncify_stop_rewind
      i32.const 65784
      i32.const 0
      i32.store8
    else
      local.get 0
      global.get $__stack_pointer
      i32.store offset=4
      local.get 0
      call $asyncify_start_unwind
    end)
  (func $tinygo_launch (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    local.set 1
    local.get 0
    i32.load offset=12
    global.set $__stack_pointer
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load
    call_indirect (type 1)
    call $asyncify_stop_unwind
    local.get 1
    global.set $__stack_pointer)
  (func $tinygo_rewind (type 1) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    local.set 1
    local.get 0
    i32.load offset=12
    global.set $__stack_pointer
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load
    local.set 2
    i32.const 65784
    i32.const 1
    i32.store8
    local.get 0
    i32.const 8
    i32.add
    call $asyncify_start_rewind
    local.get 2
    call_indirect (type 1)
    call $asyncify_stop_unwind
    local.get 1
    global.set $__stack_pointer)
  (func $dummy (type 0)
    nop)
  (func $__wasm_call_dtors (type 0)
    call $dummy
    call $dummy)
  (func $memcpy (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          local.get 2
          i32.eqz
          i32.or
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 0
            i32.const 1
            i32.add
            local.tee 3
            local.get 1
            i32.const 1
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            local.get 2
            i32.const 1
            i32.sub
            local.tee 5
            i32.eqz
            i32.or
            br_if 1 (;@3;)
            drop
            local.get 0
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 0
            i32.const 2
            i32.add
            local.tee 3
            local.get 1
            i32.const 2
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            local.get 2
            i32.const 2
            i32.sub
            local.tee 5
            i32.eqz
            i32.or
            br_if 1 (;@3;)
            drop
            local.get 0
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 0
            i32.const 3
            i32.add
            local.tee 3
            local.get 1
            i32.const 3
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            local.get 2
            i32.const 3
            i32.sub
            local.tee 5
            i32.eqz
            i32.or
            br_if 1 (;@3;)
            drop
            local.get 0
            local.get 1
            i32.load8_u offset=3
            i32.store8 offset=3
            local.get 2
            i32.const 4
            i32.sub
            local.set 5
            local.get 1
            i32.const 4
            i32.add
            local.set 4
            local.get 0
            i32.const 4
            i32.add
            br 1 (;@3;)
          end
          local.get 2
          local.set 5
          local.get 1
          local.set 4
          local.get 0
        end
        local.tee 3
        i32.const 3
        i32.and
        local.tee 1
        i32.eqz
        if  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 16
            i32.lt_u
            if  ;; label = @5
              local.get 5
              local.set 1
              br 1 (;@4;)
            end
            local.get 5
            i32.const 16
            i32.sub
            local.tee 1
            i32.const 16
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 3
              local.get 4
              i64.load align=4
              i64.store align=4
              local.get 3
              local.get 4
              i64.load offset=8 align=4
              i64.store offset=8 align=4
              local.get 4
              i32.const 16
              i32.add
              local.set 4
              local.get 1
              local.set 5
              local.get 3
              i32.const 16
              i32.add
              local.set 3
            end
            local.get 1
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 5
            local.set 1
            loop  ;; label = @5
              local.get 3
              local.get 4
              i64.load align=4
              i64.store align=4
              local.get 3
              local.get 4
              i64.load offset=8 align=4
              i64.store offset=8 align=4
              local.get 3
              local.get 4
              i64.load offset=16 align=4
              i64.store offset=16 align=4
              local.get 3
              local.get 4
              i64.load offset=24 align=4
              i64.store offset=24 align=4
              local.get 3
              i32.const 32
              i32.add
              local.set 3
              local.get 4
              i32.const 32
              i32.add
              local.set 4
              local.get 1
              i32.const 32
              i32.sub
              local.tee 1
              i32.const 15
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 1
          i32.const 8
          i32.and
          if  ;; label = @4
            local.get 3
            local.get 4
            i64.load align=4
            i64.store align=4
            local.get 4
            i32.const 8
            i32.add
            local.set 4
            local.get 3
            i32.const 8
            i32.add
            local.set 3
          end
          local.get 1
          i32.const 4
          i32.and
          if  ;; label = @4
            local.get 3
            local.get 4
            i32.load
            i32.store
            local.get 4
            i32.const 4
            i32.add
            local.set 4
            local.get 3
            i32.const 4
            i32.add
            local.set 3
          end
          local.get 1
          i32.const 2
          i32.and
          if  ;; label = @4
            local.get 3
            local.get 4
            i32.load16_u align=1
            i32.store16 align=1
            local.get 4
            i32.const 2
            i32.add
            local.set 4
            local.get 3
            i32.const 2
            i32.add
            local.set 3
          end
          local.get 1
          i32.const 1
          i32.and
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 5
          i32.const 32
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 1
                i32.sub
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              local.get 3
              local.get 4
              i32.load
              local.tee 6
              i32.store8
              local.get 3
              local.get 6
              i32.const 16
              i32.shr_u
              i32.store8 offset=2
              local.get 3
              local.get 6
              i32.const 8
              i32.shr_u
              i32.store8 offset=1
              local.get 5
              i32.const 3
              i32.sub
              local.set 5
              local.get 3
              i32.const 3
              i32.add
              local.set 8
              i32.const 0
              local.set 1
              loop  ;; label = @6
                local.get 1
                local.get 8
                i32.add
                local.tee 3
                local.get 1
                local.get 4
                i32.add
                local.tee 2
                i32.const 4
                i32.add
                i32.load
                local.tee 7
                i32.const 8
                i32.shl
                local.get 6
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 3
                i32.const 4
                i32.add
                local.get 2
                i32.const 8
                i32.add
                i32.load
                local.tee 6
                i32.const 8
                i32.shl
                local.get 7
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 3
                i32.const 8
                i32.add
                local.get 2
                i32.const 12
                i32.add
                i32.load
                local.tee 7
                i32.const 8
                i32.shl
                local.get 6
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 3
                i32.const 12
                i32.add
                local.get 2
                i32.const 16
                i32.add
                i32.load
                local.tee 6
                i32.const 8
                i32.shl
                local.get 7
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 5
                i32.const 16
                i32.sub
                local.tee 5
                i32.const 16
                i32.gt_u
                br_if 0 (;@6;)
              end
              local.get 1
              local.get 8
              i32.add
              local.set 3
              local.get 1
              local.get 4
              i32.add
              i32.const 3
              i32.add
              local.set 4
              br 2 (;@3;)
            end
            local.get 3
            local.get 4
            i32.load
            local.tee 6
            i32.store16 align=1
            local.get 5
            i32.const 2
            i32.sub
            local.set 5
            local.get 3
            i32.const 2
            i32.add
            local.set 8
            i32.const 0
            local.set 1
            loop  ;; label = @5
              local.get 1
              local.get 8
              i32.add
              local.tee 3
              local.get 1
              local.get 4
              i32.add
              local.tee 2
              i32.const 4
              i32.add
              i32.load
              local.tee 7
              i32.const 16
              i32.shl
              local.get 6
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 2
              i32.const 8
              i32.add
              i32.load
              local.tee 6
              i32.const 16
              i32.shl
              local.get 7
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 2
              i32.const 12
              i32.add
              i32.load
              local.tee 7
              i32.const 16
              i32.shl
              local.get 6
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 12
              i32.add
              local.get 2
              i32.const 16
              i32.add
              i32.load
              local.tee 6
              i32.const 16
              i32.shl
              local.get 7
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 5
              i32.const 16
              i32.sub
              local.tee 5
              i32.const 17
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 1
            local.get 8
            i32.add
            local.set 3
            local.get 1
            local.get 4
            i32.add
            i32.const 2
            i32.add
            local.set 4
            br 1 (;@3;)
          end
          local.get 3
          local.get 4
          i32.load
          local.tee 6
          i32.store8
          local.get 5
          i32.const 1
          i32.sub
          local.set 5
          local.get 3
          i32.const 1
          i32.add
          local.set 8
          i32.const 0
          local.set 1
          loop  ;; label = @4
            local.get 1
            local.get 8
            i32.add
            local.tee 3
            local.get 1
            local.get 4
            i32.add
            local.tee 2
            i32.const 4
            i32.add
            i32.load
            local.tee 7
            i32.const 24
            i32.shl
            local.get 6
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 2
            i32.const 8
            i32.add
            i32.load
            local.tee 6
            i32.const 24
            i32.shl
            local.get 7
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 8
            i32.add
            local.get 2
            i32.const 12
            i32.add
            i32.load
            local.tee 7
            i32.const 24
            i32.shl
            local.get 6
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 2
            i32.const 16
            i32.add
            i32.load
            local.tee 6
            i32.const 24
            i32.shl
            local.get 7
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 5
            i32.const 16
            i32.sub
            local.tee 5
            i32.const 18
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 1
          local.get 8
          i32.add
          local.set 3
          local.get 1
          local.get 4
          i32.add
          i32.const 1
          i32.add
          local.set 4
        end
        local.get 5
        i32.const 16
        i32.and
        if  ;; label = @3
          local.get 3
          local.get 4
          i32.load8_u
          i32.store8
          local.get 3
          local.get 4
          i32.load offset=1 align=1
          i32.store offset=1 align=1
          local.get 3
          local.get 4
          i64.load offset=5 align=1
          i64.store offset=5 align=1
          local.get 3
          local.get 4
          i32.load16_u offset=13 align=1
          i32.store16 offset=13 align=1
          local.get 3
          local.get 4
          i32.load8_u offset=15
          i32.store8 offset=15
          local.get 4
          i32.const 16
          i32.add
          local.set 4
          local.get 3
          i32.const 16
          i32.add
          local.set 3
        end
        local.get 5
        i32.const 8
        i32.and
        if  ;; label = @3
          local.get 3
          local.get 4
          i64.load align=1
          i64.store align=1
          local.get 4
          i32.const 8
          i32.add
          local.set 4
          local.get 3
          i32.const 8
          i32.add
          local.set 3
        end
        local.get 5
        i32.const 4
        i32.and
        if  ;; label = @3
          local.get 3
          local.get 4
          i32.load align=1
          i32.store align=1
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 3
          i32.const 4
          i32.add
          local.set 3
        end
        local.get 5
        i32.const 2
        i32.and
        if  ;; label = @3
          local.get 3
          local.get 4
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const 2
          i32.add
          local.set 4
          local.get 3
          i32.const 2
          i32.add
          local.set 3
        end
        local.get 5
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 3
      local.get 4
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (func $memmove (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.sub
      i32.const 0
      local.get 2
      i32.const 1
      i32.shl
      i32.sub
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        call $memcpy
        drop
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.xor
      i32.const 3
      i32.and
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 1
          i32.lt_u
          if  ;; label = @4
            local.get 4
            if  ;; label = @5
              local.get 2
              local.set 4
              local.get 0
              local.set 3
              br 3 (;@2;)
            end
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 2
              local.set 4
              local.get 0
              local.set 3
              br 2 (;@3;)
            end
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 2
            i32.const 1
            i32.sub
            local.set 4
            local.get 0
            i32.const 1
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              br 2 (;@3;)
            end
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const 2
            i32.sub
            local.set 4
            local.get 0
            i32.const 2
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.const 2
              i32.add
              local.set 1
              br 2 (;@3;)
            end
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 2
            i32.const 3
            i32.sub
            local.set 4
            local.get 0
            i32.const 3
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.const 3
              i32.add
              local.set 1
              br 2 (;@3;)
            end
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=3
            i32.store8 offset=3
            local.get 0
            i32.const 4
            i32.add
            local.set 3
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 2
            i32.const 4
            i32.sub
            local.set 4
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 4
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.const 3
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const 1
              i32.sub
              local.tee 3
              i32.add
              local.tee 4
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              i32.store8
              local.get 4
              i32.const 3
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const 2
              i32.sub
              local.tee 3
              i32.add
              local.tee 4
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              i32.store8
              local.get 4
              i32.const 3
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const 3
              i32.sub
              local.tee 3
              i32.add
              local.tee 4
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              i32.store8
              local.get 4
              i32.const 3
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const 4
              i32.sub
              local.tee 2
              i32.add
              local.get 1
              local.get 2
              i32.add
              i32.load8_u
              i32.store8
            end
            local.get 2
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const 4
            i32.sub
            local.tee 6
            i32.const 2
            i32.shr_u
            i32.const 1
            i32.add
            i32.const 3
            i32.and
            local.tee 3
            if  ;; label = @5
              local.get 1
              i32.const 4
              i32.sub
              local.set 4
              local.get 0
              i32.const 4
              i32.sub
              local.set 5
              loop  ;; label = @6
                local.get 2
                local.get 5
                i32.add
                local.get 2
                local.get 4
                i32.add
                i32.load
                i32.store
                local.get 2
                i32.const 4
                i32.sub
                local.set 2
                local.get 3
                i32.const 1
                i32.sub
                local.tee 3
                br_if 0 (;@6;)
              end
            end
            local.get 6
            i32.const 12
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 16
            i32.sub
            local.set 5
            local.get 0
            i32.const 16
            i32.sub
            local.set 6
            loop  ;; label = @5
              local.get 2
              local.get 6
              i32.add
              local.tee 3
              i32.const 12
              i32.add
              local.get 2
              local.get 5
              i32.add
              local.tee 4
              i32.const 12
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 4
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 4
              i32.const 4
              i32.add
              i32.load
              i32.store
              local.get 3
              local.get 4
              i32.load
              i32.store
              local.get 2
              i32.const 16
              i32.sub
              local.tee 2
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          i32.const 1
          i32.sub
          local.set 6
          local.get 2
          i32.const 3
          i32.and
          local.tee 3
          if  ;; label = @4
            local.get 1
            i32.const 1
            i32.sub
            local.set 4
            local.get 0
            i32.const 1
            i32.sub
            local.set 5
            loop  ;; label = @5
              local.get 2
              local.get 5
              i32.add
              local.get 2
              local.get 4
              i32.add
              i32.load8_u
              i32.store8
              local.get 2
              i32.const 1
              i32.sub
              local.set 2
              local.get 3
              i32.const 1
              i32.sub
              local.tee 3
              br_if 0 (;@5;)
            end
          end
          local.get 6
          i32.const 3
          i32.lt_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 4
          i32.sub
          local.set 4
          local.get 0
          i32.const 4
          i32.sub
          local.set 5
          loop  ;; label = @4
            local.get 2
            local.get 5
            i32.add
            local.tee 1
            i32.const 3
            i32.add
            local.get 2
            local.get 4
            i32.add
            local.tee 3
            i32.const 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 2
            i32.add
            local.get 3
            i32.const 2
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.get 3
            i32.const 1
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            local.get 3
            i32.load8_u
            i32.store8
            local.get 2
            i32.const 4
            i32.sub
            local.tee 2
            br_if 0 (;@4;)
          end
          br 2 (;@1;)
        end
        local.get 4
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        i32.const 4
        i32.sub
        local.tee 5
        i32.const 2
        i32.shr_u
        i32.const 1
        i32.add
        i32.const 7
        i32.and
        local.tee 2
        if  ;; label = @3
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 3
            i32.const 4
            i32.add
            local.set 3
            local.get 4
            i32.const 4
            i32.sub
            local.set 4
            local.get 2
            i32.const 1
            i32.sub
            local.tee 2
            br_if 0 (;@4;)
          end
        end
        local.get 5
        i32.const 28
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 3
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 3
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 3
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 3
          local.get 1
          i32.load offset=16
          i32.store offset=16
          local.get 3
          local.get 1
          i32.load offset=20
          i32.store offset=20
          local.get 3
          local.get 1
          i32.load offset=24
          i32.store offset=24
          local.get 3
          local.get 1
          i32.load offset=28
          i32.store offset=28
          local.get 1
          i32.const 32
          i32.add
          local.set 1
          local.get 3
          i32.const 32
          i32.add
          local.set 3
          local.get 4
          i32.const 32
          i32.sub
          local.tee 4
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 1
      i32.sub
      local.set 5
      local.get 4
      i32.const 7
      i32.and
      local.tee 2
      if  ;; label = @2
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 4
          i32.const 1
          i32.sub
          local.set 4
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const 1
          i32.sub
          local.tee 2
          br_if 0 (;@3;)
        end
      end
      local.get 5
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 4
        i32.const 8
        i32.sub
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memset (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i64 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.const 1
      i32.sub
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const 3
      i32.sub
      local.get 1
      i32.store8
      local.get 3
      i32.const 2
      i32.sub
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const 4
      i32.sub
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const 4
      i32.sub
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 12
      i32.sub
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const 16
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 20
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 24
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 28
      i32.sub
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 6
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 5
      local.get 3
      local.get 6
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 5
        i64.store offset=24
        local.get 1
        local.get 5
        i64.store offset=16
        local.get 1
        local.get 5
        i64.store offset=8
        local.get 1
        local.get 5
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const 32
        i32.sub
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $_*internal/task.Queue_.Pop (type 3) (result i32)
    (local i32)
    i32.const 65808
    i32.load
    local.tee 0
    if  ;; label = @1
      i32.const 65808
      local.get 0
      i32.load
      i32.store
      local.get 0
      i32.const 65812
      i32.load
      i32.eq
      if  ;; label = @2
        i32.const 65812
        i32.const 0
        i32.store
      end
      local.get 0
      i32.const 0
      i32.store
    end
    local.get 0)
  (func $_*internal/task.Task_.Resume (type 1) (param i32)
    (local i32 i32)
    local.get 0
    i32.load offset=16
    local.set 1
    local.get 0
    i32.const 65860
    i32.load
    i32.store offset=16
    i32.const 65860
    local.get 1
    i32.store
    i32.const 65788
    i32.load
    local.set 1
    i32.const 65788
    local.get 0
    i32.store
    local.get 0
    i32.const 20
    i32.add
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.const 36
      i32.add
      i32.load8_u
      if  ;; label = @2
        local.get 2
        call $tinygo_rewind
        br 1 (;@1;)
      end
      local.get 2
      call $tinygo_launch
      local.get 0
      i32.const 1
      i32.store8 offset=36
    end
    i32.const 65788
    local.get 1
    i32.store
    i32.const 65860
    i32.load
    local.set 1
    i32.const 65860
    local.get 0
    i32.load offset=16
    i32.store
    local.get 0
    local.get 1
    i32.store offset=16
    local.get 0
    i32.const 28
    i32.add
    i32.load
    local.get 0
    i32.const 32
    i32.add
    i32.load
    i32.le_u
    if  ;; label = @1
      return
    end
    call $runtime.runtimePanic
    unreachable)
  (func $runtime.runtimePanic (type 0)
    i32.const 65536
    i32.const 14
    call $runtime.runtimePanicAt
    unreachable)
  (func $internal/task.start (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 24
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 1
    i32.const 32
    i32.add
    local.tee 5
    i64.const 0
    i64.store
    local.get 1
    i32.const 40
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i64.const 0
    i64.store offset=16
    local.get 1
    i32.const 7
    i32.store offset=12
    i32.const 65860
    i32.load
    local.set 4
    i32.const 65860
    local.get 1
    i32.const 8
    i32.add
    i32.store
    local.get 1
    local.get 4
    i32.store offset=8
    i32.const 48
    call $runtime.alloc
    local.tee 2
    local.get 0
    i32.store offset=20
    local.get 2
    i32.const 24
    i32.add
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i32.store offset=16
    local.get 3
    i32.const 16384
    call $runtime.alloc
    local.tee 0
    i32.store
    local.get 2
    i32.const 28
    i32.add
    local.get 0
    i32.store
    local.get 0
    i32.const -1204030091
    i32.store
    local.get 2
    i32.const 32
    i32.add
    local.get 0
    i32.const 16384
    i32.add
    i32.store
    local.get 5
    i32.const 65812
    i32.load
    local.tee 3
    i32.store
    local.get 1
    local.get 0
    i32.store offset=28
    local.get 1
    local.get 0
    i32.store offset=20
    local.get 3
    if  ;; label = @1
      local.get 1
      local.get 3
      i32.store offset=36
      local.get 3
      local.get 2
      i32.store
    end
    local.get 2
    i32.const 0
    i32.store
    i32.const 65812
    local.get 2
    i32.store
    local.get 1
    i32.const 65808
    i32.load
    local.tee 0
    i32.store offset=40
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 65808
      local.get 2
      i32.store
    end
    i32.const 65860
    local.get 4
    i32.store
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $runtime.alloc (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 65856
      return
    end
    i32.const 65832
    i32.const 65832
    i64.load
    local.get 0
    i64.extend_i32_u
    i64.add
    i64.store
    i32.const 65840
    i32.const 65840
    i64.load
    i64.const 1
    i64.add
    i64.store
    local.get 0
    i32.const 15
    i32.add
    i32.const 4
    i32.shr_u
    local.set 5
    i32.const 65820
    i32.load
    local.tee 4
    local.set 3
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 4
              i32.ne
              if  ;; label = @6
                local.get 2
                local.set 1
                br 1 (;@5;)
              end
              i32.const 1
              local.set 1
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 255
                  i32.and
                  br_table 2 (;@5;) 0 (;@7;) 1 (;@6;)
                end
                i32.const 65860
                i32.load
                drop
                i32.const 65788
                i32.load
                i32.eqz
                if  ;; label = @7
                  call $tinygo_getCurrentStackPointer
                  i32.const 65536
                  call $runtime.markRoots
                end
                i32.const 65536
                i32.const 66160
                call $runtime.markRoots
                loop  ;; label = @7
                  i32.const 65857
                  i32.load8_u
                  i32.eqz
                  if  ;; label = @8
                    i32.const 0
                    local.set 2
                    i32.const 0
                    local.set 4
                    i32.const 0
                    local.set 1
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 65824
                          i32.load
                          local.get 1
                          i32.gt_u
                          if  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 1
                                    call $_runtime.gcBlock_.state
                                    i32.const 255
                                    i32.and
                                    br_table 3 (;@13;) 0 (;@16;) 1 (;@15;) 2 (;@14;) 6 (;@10;)
                                  end
                                  local.get 1
                                  call $_runtime.gcBlock_.markFree
                                  i32.const 65848
                                  i32.const 65848
                                  i64.load
                                  i64.const 1
                                  i64.add
                                  i64.store
                                  br 4 (;@11;)
                                end
                                local.get 4
                                i32.const 1
                                i32.and
                                local.set 7
                                i32.const 0
                                local.set 4
                                local.get 7
                                i32.eqz
                                br_if 4 (;@10;)
                                local.get 1
                                call $_runtime.gcBlock_.markFree
                                br 3 (;@11;)
                              end
                              i32.const 0
                              local.set 4
                              i32.const 65816
                              i32.load
                              local.get 1
                              i32.const 2
                              i32.shr_u
                              i32.add
                              local.tee 7
                              local.get 7
                              i32.load8_u
                              i32.const 2
                              local.get 1
                              i32.const 1
                              i32.shl
                              i32.const 6
                              i32.and
                              i32.shl
                              i32.const -1
                              i32.xor
                              i32.and
                              i32.store8
                              br 3 (;@10;)
                            end
                            local.get 2
                            i32.const 16
                            i32.add
                            local.set 2
                            br 2 (;@10;)
                          end
                          i32.const 2
                          local.set 1
                          local.get 2
                          i32.const 65816
                          i32.load
                          i32.const 66160
                          i32.sub
                          i32.const 3
                          i32.div_u
                          i32.ge_u
                          br_if 6 (;@5;)
                          call $runtime.growHeap
                          drop
                          br 6 (;@5;)
                        end
                        local.get 2
                        i32.const 16
                        i32.add
                        local.set 2
                        i32.const 1
                        local.set 4
                      end
                      local.get 1
                      i32.const 1
                      i32.add
                      local.set 1
                      br 0 (;@9;)
                    end
                    unreachable
                  end
                  i32.const 0
                  local.set 1
                  i32.const 65857
                  i32.const 0
                  i32.store8
                  i32.const 65824
                  i32.load
                  local.set 2
                  loop  ;; label = @8
                    local.get 1
                    local.get 2
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 1
                    call $_runtime.gcBlock_.state
                    i32.const 255
                    i32.and
                    i32.const 3
                    i32.eq
                    if  ;; label = @9
                      local.get 1
                      call $runtime.startMark
                      i32.const 65824
                      i32.load
                      local.set 2
                    end
                    local.get 1
                    i32.const 1
                    i32.add
                    local.set 1
                    br 0 (;@8;)
                  end
                  unreachable
                end
                unreachable
              end
              local.get 2
              local.set 1
              call $runtime.growHeap
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
            end
            i32.const 65824
            i32.load
            local.get 3
            i32.eq
            if  ;; label = @5
              i32.const 0
              local.set 3
              br 2 (;@3;)
            end
            local.get 3
            call $_runtime.gcBlock_.state
            i32.const 255
            i32.and
            if  ;; label = @5
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              br 2 (;@3;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 2
            local.get 5
            local.get 6
            i32.const 1
            i32.add
            local.tee 6
            i32.ne
            if  ;; label = @5
              local.get 2
              local.set 3
              br 3 (;@2;)
            end
            i32.const 65820
            local.get 2
            i32.store
            local.get 2
            local.get 5
            i32.sub
            local.tee 2
            i32.const 1
            call $_runtime.gcBlock_.setState
            local.get 3
            local.get 5
            i32.sub
            i32.const 2
            i32.add
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.const 65820
              i32.load
              i32.eq
              i32.eqz
              if  ;; label = @6
                local.get 1
                i32.const 2
                call $_runtime.gcBlock_.setState
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                br 1 (;@5;)
              end
            end
            local.get 2
            i32.const 4
            i32.shl
            i32.const 66160
            i32.add
            i32.const 0
            local.get 0
            call $memset
            return
          end
          i32.const 65616
          i32.const 13
          call $runtime.runtimePanicAt
          unreachable
        end
        i32.const 0
        local.set 6
      end
      i32.const 65820
      i32.load
      local.set 4
      local.get 1
      local.set 2
      br 0 (;@1;)
    end
    unreachable)
  (func $internal/task.Pause (type 0)
    (local i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get 2
      i32.load
      i32.load
      local.set 0
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 1
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 65788
        i32.load
        local.tee 0
        i32.eqz
        local.set 2
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 2
              br_if 1 (;@4;)
              local.get 0
              i32.const 28
              i32.add
              local.tee 0
              i32.load
              i32.load
              i32.const -1204030091
              i32.ne
              br_if 2 (;@3;)
            end
            local.get 1
            i32.const 0
            global.get 1
            select
            i32.eqz
            if  ;; label = @5
              local.get 0
              call $tinygo_unwind
              i32.const 0
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              i32.const 65788
              i32.load
              local.tee 0
              br_if 3 (;@2;)
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            call $runtime.nilPanic
            unreachable
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          call $runtime.runtimePanic
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.const -1204030091
        i32.store
      end
      return
    end
    local.set 1
    global.get 2
    i32.load
    local.get 1
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store)
  (func $runtime.nilPanic (type 0)
    i32.const 65658
    i32.const 23
    call $runtime.runtimePanicAt
    unreachable)
  (func $runtime.memequal (type 2) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block (result i32)  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 2
        local.get 4
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 1
        local.get 4
        i32.add
        local.set 5
        local.get 0
        local.get 4
        i32.add
        local.set 6
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 6
        i32.load8_u
        local.get 5
        i32.load8_u
        i32.eq
        br_if 0 (;@2;)
      end
      local.get 4
      i32.const 1
      i32.sub
    end
    local.tee 4
    local.get 2
    i32.ge_u)
  (func $runtime.hash32 (type 2) (param i32 i32 i32 i32) (result i32)
    local.get 2
    i32.const -2128831035
    i32.mul
    local.set 2
    loop  ;; label = @1
      local.get 1
      if  ;; label = @2
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        local.get 2
        local.get 0
        i32.load8_u
        i32.xor
        i32.const 16777619
        i32.mul
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    local.get 2)
  (func $malloc (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 16
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 2
      i32.load
      local.set 0
      local.get 2
      i32.load offset=4
      local.set 1
      local.get 2
      i32.load offset=8
      local.set 3
      local.get 2
      i32.load offset=12
      local.set 2
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 4
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 32
        i32.sub
        local.tee 1
        global.set $__stack_pointer
        local.get 1
        i32.const 2
        i32.store offset=20
        i32.const 65860
        i32.load
        local.set 2
        i32.const 65860
        local.get 1
        i32.const 16
        i32.add
        i32.store
        local.get 1
        local.get 2
        i32.store offset=16
        local.get 0
        i32.eqz
        local.set 5
        i32.const 0
        local.set 3
      end
      block  ;; label = @2
        block  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 5
            br_if 1 (;@3;)
            local.get 0
            i32.const 0
            i32.lt_s
            br_if 2 (;@2;)
            local.get 1
            local.get 0
            call $runtime.alloc
            local.tee 3
            i32.store offset=24
            local.get 1
            local.get 3
            i32.store offset=28
            local.get 1
            local.get 0
            i32.store offset=8
            local.get 1
            local.get 0
            i32.store offset=4
            local.get 1
            local.get 3
            i32.store
            local.get 1
            local.get 3
            i32.store offset=12
            local.get 1
            i32.const 12
            i32.add
            local.set 0
          end
          local.get 4
          i32.const 0
          global.get 1
          select
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.get 1
            call $runtime.hashmapBinarySet
            i32.const 0
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          i32.const 65860
          local.get 2
          i32.store
          local.get 1
          i32.const 32
          i32.add
          global.set $__stack_pointer
          local.get 3
          return
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        call $runtime.slicePanic
        unreachable
      end
      unreachable
    end
    local.set 4
    global.get 2
    i32.load
    local.get 4
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 4
    local.get 0
    i32.store
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    local.get 3
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=12
    global.get 2
    global.get 2
    i32.load
    i32.const 16
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapBinarySet (type 6) (param i32 i32)
    (local i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 2
      i32.load
      local.set 0
      local.get 2
      i32.load offset=4
      local.set 1
      local.get 2
      i32.load offset=8
      local.set 2
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 3
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 65752
        i32.load
        i32.const 65744
        i32.load
        local.get 0
        call $runtime.hash32
        local.set 2
      end
      local.get 3
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        i32.const 65740
        local.get 0
        local.get 1
        local.get 2
        call $runtime.hashmapSet
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      return
    end
    local.set 3
    global.get 2
    i32.load
    local.get 3
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store)
  (func $runtime.slicePanic (type 0)
    i32.const 65699
    i32.const 18
    call $runtime.runtimePanicAt
    unreachable)
  (func $free (type 1) (param i32)
    (local i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 2
      i32.load
      local.set 0
      local.get 2
      i32.load offset=4
      local.set 1
      local.get 2
      i32.load offset=8
      local.set 3
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 4
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 16
        i32.sub
        local.tee 3
        global.set $__stack_pointer
        local.get 0
        i32.eqz
        local.set 1
      end
      block  ;; label = @2
        block  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 1
            br_if 1 (;@3;)
            local.get 3
            local.get 0
            i32.store offset=12
            local.get 3
            i32.const 12
            i32.add
            local.set 1
          end
          local.get 4
          i32.const 0
          global.get 1
          select
          i32.eqz
          if  ;; label = @4
            local.get 1
            local.get 3
            call $runtime.hashmapBinaryGet
            local.set 2
            i32.const 0
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
            local.get 2
            local.set 1
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 1
            i32.const 1
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            local.get 0
            i32.store
          end
          local.get 4
          i32.const 1
          i32.eq
          i32.const 1
          global.get 1
          select
          if  ;; label = @4
            local.get 3
            call $runtime.hashmapBinaryDelete
            i32.const 1
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 3
          i32.const 16
          i32.add
          global.set $__stack_pointer
          return
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 65576
        call $runtime._panic
        unreachable
      end
      return
    end
    local.set 2
    global.get 2
    i32.load
    local.get 2
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 3
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store)
  (func $runtime.hashmapBinaryGet (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 3
      i32.load
      local.set 0
      local.get 3
      i32.load offset=4
      local.set 1
      local.get 3
      i32.load offset=8
      local.set 3
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 2
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 65752
        i32.load
        i32.const 65744
        i32.load
        local.get 0
        call $runtime.hash32
        local.set 3
      end
      local.get 2
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        i32.const 65740
        local.get 0
        local.get 1
        local.get 3
        call $runtime.hashmapGet
        local.set 2
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 2
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        return
      end
      unreachable
    end
    local.set 2
    global.get 2
    i32.load
    local.get 2
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 3
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapBinaryDelete (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 44
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 3
      local.get 1
      i32.load offset=12
      local.set 4
      local.get 1
      i32.load offset=20
      local.set 6
      local.get 1
      i32.load offset=24
      local.set 7
      local.get 1
      i32.load offset=28
      local.set 8
      local.get 1
      i32.load offset=32
      local.set 9
      local.get 1
      i32.load offset=36
      local.set 10
      local.get 1
      i32.load offset=40
      local.set 11
      local.get 1
      i32.load offset=16
      local.set 5
      local.get 1
      i32.load offset=4
      local.set 2
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 12
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 32
        i32.sub
        local.tee 2
        global.set $__stack_pointer
        local.get 2
        i32.const 24
        i32.add
        i64.const 0
        i64.store
        local.get 2
        i64.const 0
        i64.store offset=16
        local.get 2
        i32.const 6
        i32.store offset=4
        i32.const 65860
        i32.load
        local.set 7
        i32.const 65860
        local.get 2
        i32.store
        local.get 2
        local.get 7
        i32.store
        local.get 0
        i32.const 65752
        i32.load
        i32.const 65744
        i32.load
        local.tee 6
        local.get 3
        call $runtime.hash32
        local.tee 3
        i32.const 24
        i32.shr_u
        local.tee 4
        i32.const 1
        local.get 4
        select
        local.set 8
        i32.const 65740
        local.get 3
        call $runtime.hashmapBucketAddrForHash
        local.set 4
      end
      block  ;; label = @2
        loop  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 2
            local.get 4
            i32.store offset=8
            local.get 2
            local.get 4
            i32.store offset=12
            local.get 4
            i32.eqz
            br_if 2 (;@2;)
            i32.const 0
            local.set 3
          end
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 3
                  i32.const 8
                  i32.eq
                  local.tee 6
                  br_if 1 (;@6;)
                  local.get 2
                  i32.const 65752
                  i32.load
                  local.tee 9
                  local.get 3
                  i32.mul
                  local.get 4
                  i32.add
                  i32.const 12
                  i32.add
                  local.tee 6
                  i32.store offset=16
                  local.get 8
                  local.get 3
                  local.get 4
                  i32.add
                  local.tee 10
                  i32.load8_u
                  i32.ne
                  local.set 5
                end
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 5
                    br_if 1 (;@7;)
                    local.get 2
                    i32.const 65764
                    i32.load
                    local.tee 11
                    i32.store offset=20
                    local.get 2
                    i32.const 65768
                    i32.load
                    local.tee 5
                    i32.store offset=24
                    local.get 5
                    i32.eqz
                    br_if 4 (;@4;)
                  end
                  local.get 12
                  i32.const 0
                  global.get 1
                  select
                  i32.eqz
                  if  ;; label = @8
                    local.get 0
                    local.get 6
                    local.get 9
                    local.get 11
                    local.get 5
                    call_indirect (type 2)
                    local.set 1
                    i32.const 0
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 7 (;@1;)
                    drop
                    local.get 1
                    local.set 5
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 5
                    i32.const 1
                    i32.and
                    i32.eqz
                    local.tee 5
                    br_if 1 (;@7;)
                    local.get 10
                    i32.const 0
                    i32.store8
                    local.get 6
                    i32.const 0
                    i32.const 65752
                    i32.load
                    call $memset
                    drop
                    local.get 2
                    local.get 4
                    i32.const 65756
                    i32.load
                    local.tee 6
                    local.get 3
                    i32.mul
                    i32.const 65752
                    i32.load
                    i32.const 3
                    i32.shl
                    i32.add
                    i32.add
                    i32.const 12
                    i32.add
                    local.tee 3
                    i32.store offset=28
                    local.get 3
                    i32.const 0
                    local.get 6
                    call $memset
                    drop
                    i32.const 65748
                    i32.const 65748
                    i32.load
                    i32.const 1
                    i32.sub
                    i32.store
                    br 6 (;@2;)
                  end
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                  br 2 (;@5;)
                end
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 4
              i32.load offset=8
              local.set 4
              br 2 (;@3;)
            end
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          call $runtime.nilPanic
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 65860
        local.get 7
        i32.store
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
      end
      return
    end
    local.set 1
    global.get 2
    i32.load
    local.get 1
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 1
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store offset=8
    local.get 1
    local.get 4
    i32.store offset=12
    local.get 1
    local.get 5
    i32.store offset=16
    local.get 1
    local.get 6
    i32.store offset=20
    local.get 1
    local.get 7
    i32.store offset=24
    local.get 1
    local.get 8
    i32.store offset=28
    local.get 1
    local.get 9
    i32.store offset=32
    local.get 1
    local.get 10
    i32.store offset=36
    local.get 1
    local.get 11
    i32.store offset=40
    global.get 2
    global.get 2
    i32.load
    i32.const 44
    i32.add
    i32.store)
  (func $runtime._panic (type 1) (param i32)
    i32.const 65629
    i32.const 7
    call $runtime.printstring
    local.get 0
    call $runtime.printitf
    call $runtime.printnl
    unreachable)
  (func $calloc (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 12
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 2
      i32.load
      local.set 0
      local.get 2
      i32.load offset=4
      local.set 3
      local.get 2
      i32.load offset=8
      local.set 2
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 4
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 16
        i32.sub
        local.tee 3
        global.set $__stack_pointer
        i32.const 65860
        i32.load
        local.set 2
        i32.const 65860
        local.get 3
        i32.store
        local.get 0
        local.get 1
        i32.mul
        local.set 0
      end
      local.get 4
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 0
        call $malloc
        local.set 1
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 1
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 65860
        local.get 2
        i32.store
        local.get 3
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 0
        return
      end
      unreachable
    end
    local.set 1
    global.get 2
    i32.load
    local.get 1
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 1
    local.get 0
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0)
  (func $realloc (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 24
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 3
      i32.load
      local.set 0
      local.get 3
      i32.load offset=8
      local.set 2
      local.get 3
      i32.load offset=12
      local.set 4
      local.get 3
      i32.load offset=16
      local.set 5
      local.get 3
      i32.load offset=20
      local.set 7
      local.get 3
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 6
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 32
        i32.sub
        local.tee 2
        global.set $__stack_pointer
        local.get 2
        i32.const 2
        i32.store offset=20
        i32.const 65860
        i32.load
        local.set 7
        i32.const 65860
        local.get 2
        i32.const 16
        i32.add
        local.tee 4
        i32.store
        local.get 2
        local.get 7
        i32.store offset=16
        i32.const 0
        local.set 5
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            global.get 1
            i32.const 1
            local.get 1
            select
            if  ;; label = @5
              local.get 6
              i32.const 0
              global.get 1
              select
              i32.eqz
              if  ;; label = @6
                local.get 0
                call $free
                i32.const 0
                global.get 1
                i32.const 1
                i32.eq
                br_if 5 (;@1;)
                drop
              end
              global.get 1
              i32.eqz
              br_if 1 (;@4;)
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.const 0
              i32.lt_s
              br_if 2 (;@3;)
              local.get 2
              local.get 1
              call $runtime.alloc
              local.tee 5
              i32.store offset=24
              local.get 2
              local.get 5
              i32.store offset=28
              local.get 0
              i32.eqz
              local.set 4
            end
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                br_if 1 (;@5;)
                local.get 2
                local.get 0
                i32.store offset=12
                local.get 2
                i32.const 12
                i32.add
                local.set 4
              end
              local.get 6
              i32.const 1
              i32.eq
              i32.const 1
              global.get 1
              select
              if  ;; label = @6
                local.get 4
                local.get 2
                call $runtime.hashmapBinaryGet
                local.set 3
                i32.const 1
                global.get 1
                i32.const 1
                i32.eq
                br_if 5 (;@1;)
                drop
                local.get 3
                local.set 4
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                i32.const 1
                i32.and
                i32.eqz
                br_if 4 (;@2;)
                local.get 5
                local.get 2
                i32.load
                local.get 2
                i32.load offset=4
                local.tee 4
                local.get 1
                local.get 1
                local.get 4
                i32.gt_u
                select
                call $memmove
                drop
                local.get 2
                local.get 0
                i32.store
              end
              local.get 6
              i32.const 2
              i32.eq
              i32.const 1
              global.get 1
              select
              if  ;; label = @6
                local.get 2
                call $runtime.hashmapBinaryDelete
                i32.const 2
                global.get 1
                i32.const 1
                i32.eq
                br_if 5 (;@1;)
                drop
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 2
              local.get 1
              i32.store offset=8
              local.get 2
              local.get 1
              i32.store offset=4
              local.get 2
              local.get 5
              i32.store
              local.get 2
              local.get 5
              i32.store offset=12
              local.get 2
              i32.const 12
              i32.add
              local.set 0
            end
            local.get 6
            i32.const 3
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              local.get 0
              local.get 2
              call $runtime.hashmapBinarySet
              i32.const 3
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            i32.const 65860
            local.get 7
            i32.store
            local.get 2
            i32.const 32
            i32.add
            global.set $__stack_pointer
            local.get 5
            return
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          call $runtime.slicePanic
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 65608
        call $runtime._panic
        unreachable
      end
      unreachable
    end
    local.set 3
    global.get 2
    i32.load
    local.get 3
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 3
    local.get 4
    i32.store offset=12
    local.get 3
    local.get 5
    i32.store offset=16
    local.get 3
    local.get 7
    i32.store offset=20
    global.get 2
    global.get 2
    i32.load
    i32.const 24
    i32.add
    i32.store
    i32.const 0)
  (func $_start (type 0)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i64.const 2
    i64.store offset=4 align=4
    i32.const 65860
    i32.load
    local.set 2
    i32.const 65860
    local.get 0
    i32.store
    local.get 0
    local.get 2
    i32.store
    memory.size
    local.set 1
    i32.const 65864
    i32.const 1
    i32.store8
    i32.const 65792
    local.get 1
    i32.const 16
    i32.shl
    local.tee 3
    i32.store
    call $runtime.calculateHeapAddresses
    local.get 0
    i32.const 65816
    i32.load
    local.tee 1
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 1
    i32.const 0
    local.get 3
    local.get 1
    i32.sub
    call $memset
    drop
    i32.const 1
    call $internal/task.start
    call $runtime.scheduler
    i32.const 65860
    local.get 2
    i32.store
    i32.const 65864
    i32.const 0
    i32.store8
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $runtime.calculateHeapAddresses (type 0)
    (local i32)
    i32.const 65816
    i32.const 65792
    i32.load
    local.tee 0
    local.get 0
    i32.const 66096
    i32.sub
    i32.const 65
    i32.div_u
    i32.sub
    local.tee 0
    i32.store
    i32.const 65824
    local.get 0
    i32.const 66160
    i32.sub
    i32.const 4
    i32.shr_u
    i32.store)
  (func $runtime.run$1$gowrapper (type 1) (param i32)
    (local i32)
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 1
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        call $runtime.run$1
      end
      local.get 1
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        call $runtime.deadlock
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      return
    end
    local.set 0
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store)
  (func $runtime.scheduler (type 0)
    (local i32)
    loop  ;; label = @1
      block  ;; label = @2
        i32.const 65865
        i32.load8_u
        br_if 0 (;@2;)
        call $_*internal/task.Queue_.Pop
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        call $_*internal/task.Task_.Resume
        br 1 (;@1;)
      end
    end)
  (func $resume (type 0)
    i32.const 2
    call $internal/task.start
    i32.const 65864
    i32.load8_u
    if  ;; label = @1
      call $runtime.minSched
      return
    end
    i32.const 65864
    i32.const 1
    i32.store8
    call $runtime.scheduler
    i32.const 65864
    i32.const 0
    i32.store8)
  (func $runtime.resume$1$gowrapper (type 1) (param i32)
    call $runtime.resume$1
    unreachable)
  (func $runtime.minSched (type 0)
    (local i32)
    loop  ;; label = @1
      block  ;; label = @2
        i32.const 65865
        i32.load8_u
        br_if 0 (;@2;)
        call $_*internal/task.Queue_.Pop
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        call $_*internal/task.Task_.Resume
        br 1 (;@1;)
      end
    end)
  (func $go_scheduler (type 0)
    i32.const 65864
    i32.load8_u
    if  ;; label = @1
      call $runtime.minSched
      return
    end
    i32.const 65864
    i32.const 1
    i32.store8
    call $runtime.scheduler
    i32.const 65864
    i32.const 0
    i32.store8)
  (func $runtime.runtimePanicAt (type 6) (param i32 i32)
    i32.const 65636
    i32.const 22
    call $runtime.printstring
    local.get 0
    local.get 1
    call $runtime.printstring
    call $runtime.printnl
    unreachable)
  (func $runtime.printstring (type 6) (param i32 i32)
    local.get 1
    i32.const 0
    local.get 1
    i32.const 0
    i32.gt_s
    select
    local.set 1
    loop  ;; label = @1
      local.get 1
      if  ;; label = @2
        local.get 0
        i32.load8_u
        call $runtime.putchar
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end)
  (func $runtime.printnl (type 0)
    i32.const 10
    call $runtime.putchar)
  (func $runtime.putchar (type 1) (param i32)
    (local i32 i32)
    i32.const 65796
    i32.load
    local.tee 1
    i32.const 119
    i32.le_u
    if  ;; label = @1
      i32.const 65796
      local.get 1
      i32.const 1
      i32.add
      local.tee 2
      i32.store
      local.get 0
      i32.const 255
      i32.and
      i32.const 10
      i32.ne
      local.get 1
      i32.const 119
      i32.ne
      i32.and
      i32.eqz
      if  ;; label = @2
        i32.const 65804
        local.get 2
        i32.store
        i32.const 65796
        i32.const 0
        i32.store
      end
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $runtime.lookupPanic (type 0)
    i32.const 65681
    i32.const 18
    call $runtime.runtimePanicAt
    unreachable)
  (func $runtime.resume$1 (type 0)
    call $runtime.nilPanic
    unreachable)
  (func $runtime.deadlock (type 0)
    (local i32)
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if (result i32)  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
      else
        i32.const 0
      end
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        call $internal/task.Pause
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 65728
        call $runtime._panic
        unreachable
      end
      return
    end
    local.set 0
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store)
  (func $runtime.printitf (type 1) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $runtime.printstring)
  (func $runtime.markRoots (type 6) (param i32 i32)
    (local i32 i32)
    i32.const 65816
    i32.load
    local.set 3
    loop  ;; label = @1
      local.get 0
      local.get 1
      i32.ge_u
      i32.eqz
      if  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 2
          i32.const 66160
          i32.lt_u
          local.get 2
          local.get 3
          i32.ge_u
          i32.or
          br_if 0 (;@3;)
          local.get 2
          i32.const 66160
          i32.sub
          i32.const 4
          i32.shr_u
          local.tee 2
          call $_runtime.gcBlock_.state
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          call $_runtime.gcBlock_.findHead
          local.tee 2
          call $_runtime.gcBlock_.state
          i32.const 255
          i32.and
          i32.const 3
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          call $runtime.startMark
        end
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end)
  (func $_runtime.gcBlock_.state (type 5) (param i32) (result i32)
    i32.const 65816
    i32.load
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    i32.load8_u
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shr_u
    i32.const 3
    i32.and)
  (func $_runtime.gcBlock_.markFree (type 1) (param i32)
    (local i32)
    i32.const 65816
    i32.load
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    local.tee 1
    local.get 1
    i32.load8_u
    i32.const 3
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    i32.store8)
  (func $runtime.growHeap (type 3) (result i32)
    (local i32 i32 i32)
    memory.size
    memory.grow
    i32.const -1
    i32.ne
    local.tee 1
    if  ;; label = @1
      memory.size
      local.set 0
      i32.const 65792
      i32.load
      local.set 2
      i32.const 65792
      local.get 0
      i32.const 16
      i32.shl
      i32.store
      i32.const 65816
      i32.load
      local.set 0
      call $runtime.calculateHeapAddresses
      i32.const 65816
      i32.load
      local.get 0
      local.get 2
      local.get 0
      i32.sub
      call $memcpy
      drop
    end
    local.get 1)
  (func $runtime.startMark (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const -64
    i32.add
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 4
    i32.add
    i32.const 0
    i32.const 60
    call $memset
    drop
    local.get 3
    local.get 0
    i32.store
    local.get 0
    i32.const 3
    call $_runtime.gcBlock_.setState
    i32.const 1
    local.set 2
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.const 0
        i32.gt_s
        if  ;; label = @3
          local.get 2
          i32.const 1
          i32.sub
          local.tee 2
          i32.const 15
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 2
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.tee 1
          i32.const 4
          i32.shl
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              call $_runtime.gcBlock_.state
              i32.const 255
              i32.and
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 0 (;@5;) 1 (;@4;)
            end
            local.get 1
            i32.const 1
            i32.add
            local.set 1
          end
          local.get 0
          i32.const 66160
          i32.add
          local.set 5
          local.get 1
          i32.const 4
          i32.shl
          local.tee 4
          local.get 0
          i32.sub
          local.set 6
          local.get 4
          i32.const 66160
          i32.add
          local.set 4
          i32.const 65816
          i32.load
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              local.get 6
              local.set 0
              local.get 4
              local.get 7
              i32.ge_u
              br_if 0 (;@5;)
              local.get 0
              i32.const 16
              i32.add
              local.set 6
              local.get 4
              i32.const 16
              i32.add
              local.set 4
              local.get 1
              call $_runtime.gcBlock_.state
              local.set 8
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 8
              i32.const 255
              i32.and
              i32.const 2
              i32.eq
              br_if 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 0
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 5
              i32.load
              local.tee 1
              i32.const 66160
              i32.lt_u
              br_if 0 (;@5;)
              local.get 1
              i32.const 65816
              i32.load
              i32.ge_u
              br_if 0 (;@5;)
              local.get 1
              i32.const 66160
              i32.sub
              i32.const 4
              i32.shr_u
              local.tee 1
              call $_runtime.gcBlock_.state
              i32.const 255
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              call $_runtime.gcBlock_.findHead
              local.tee 1
              call $_runtime.gcBlock_.state
              i32.const 255
              i32.and
              i32.const 3
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              i32.const 3
              call $_runtime.gcBlock_.setState
              local.get 2
              i32.const 16
              i32.eq
              if  ;; label = @6
                i32.const 65857
                i32.const 1
                i32.store8
                i32.const 16
                local.set 2
                br 1 (;@5;)
              end
              local.get 2
              i32.const 15
              i32.gt_u
              br_if 4 (;@1;)
              local.get 3
              local.get 2
              i32.const 2
              i32.shl
              i32.add
              local.get 1
              i32.store
              local.get 2
              i32.const 1
              i32.add
              local.set 2
            end
            local.get 0
            i32.const 4
            i32.sub
            local.set 0
            local.get 5
            i32.const 4
            i32.add
            local.set 5
            br 0 (;@4;)
          end
          unreachable
        end
      end
      local.get 3
      i32.const -64
      i32.sub
      global.set $__stack_pointer
      return
    end
    call $runtime.lookupPanic
    unreachable)
  (func $_runtime.gcBlock_.setState (type 6) (param i32 i32)
    (local i32)
    i32.const 65816
    i32.load
    local.get 0
    i32.const 2
    i32.shr_u
    i32.add
    local.tee 2
    local.get 2
    i32.load8_u
    local.get 1
    local.get 0
    i32.const 1
    i32.shl
    i32.const 6
    i32.and
    i32.shl
    i32.or
    i32.store8)
  (func $_runtime.gcBlock_.findHead (type 5) (param i32) (result i32)
    (local i32 i32)
    loop  ;; label = @1
      local.get 0
      call $_runtime.gcBlock_.state
      local.set 1
      local.get 0
      i32.const 1
      i32.sub
      local.tee 2
      local.set 0
      local.get 1
      i32.const 255
      i32.and
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 1
    i32.add)
  (func $runtime.run$1 (type 0)
    i32.const 65792
    memory.size
    i32.const 16
    i32.shl
    i32.store
    call $zkmain
    i32.const 65865
    i32.const 1
    i32.store8)
  (func $zkmain (type 0)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $mymem
    drop
    local.get 1
    i32.const 24
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 1
    i64.const 0
    i64.store offset=8
    i32.const 19
    local.set 0
    i32.const 53
    local.set 2
    loop  ;; label = @1
      local.get 0
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const 19
        local.set 0
        loop  ;; label = @3
          local.get 0
          i32.const 20
          i32.eq
          i32.eqz
          if  ;; label = @4
            local.get 1
            i32.const 8
            i32.add
            local.get 0
            i32.add
            i32.load8_u
            call $runtime.putchar
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            br 1 (;@3;)
          end
        end
        call $runtime.printnl
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
      else
        local.get 1
        i32.const 8
        i32.add
        local.get 0
        i32.add
        local.get 2
        i32.store8
        local.get 0
        i32.const 1
        i32.sub
        local.set 0
        i32.const 48
        local.set 2
        br 1 (;@1;)
      end
    end)
  (func $runtime.hashmapGet (type 2) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 52
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 4
      i32.load
      local.set 0
      local.get 4
      i32.load offset=8
      local.set 2
      local.get 4
      i32.load offset=12
      local.set 3
      local.get 4
      i32.load offset=16
      local.set 5
      local.get 4
      i32.load offset=20
      local.set 6
      local.get 4
      i32.load offset=24
      local.set 7
      local.get 4
      i32.load offset=28
      local.set 8
      local.get 4
      i32.load offset=32
      local.set 9
      local.get 4
      i32.load offset=36
      local.set 10
      local.get 4
      i32.load offset=40
      local.set 11
      local.get 4
      i32.load offset=44
      local.set 12
      local.get 4
      i32.load offset=48
      local.set 13
      local.get 4
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 14
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 48
        i32.sub
        local.tee 5
        global.set $__stack_pointer
        local.get 5
        i32.const 32
        i32.add
        i64.const 0
        i64.store
        local.get 5
        i32.const 40
        i32.add
        i32.const 0
        i32.store
        local.get 5
        i64.const 0
        i64.store offset=24
        local.get 5
        i32.const 7
        i32.store offset=12
        i32.const 65860
        i32.load
        local.set 9
        i32.const 65860
        local.get 5
        i32.const 8
        i32.add
        i32.store
        local.get 5
        local.get 9
        i32.store offset=8
        local.get 5
        local.get 0
        local.get 3
        call $runtime.hashmapBucketAddrForHash
        local.tee 6
        i32.store offset=16
        local.get 3
        i32.const 24
        i32.shr_u
        local.tee 3
        i32.const 1
        local.get 3
        select
        local.set 10
      end
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 5
                local.get 6
                i32.store offset=20
                local.get 6
                i32.eqz
                br_if 1 (;@5;)
                i32.const 0
                local.set 3
              end
              loop  ;; label = @6
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    i32.const 8
                    i32.eq
                    local.tee 7
                    br_if 1 (;@7;)
                    local.get 5
                    local.get 6
                    local.get 0
                    i32.load offset=12
                    local.tee 7
                    local.get 3
                    i32.mul
                    i32.add
                    i32.const 12
                    i32.add
                    local.tee 11
                    i32.store offset=24
                    local.get 5
                    local.get 6
                    local.get 0
                    i32.load offset=16
                    local.get 3
                    i32.mul
                    local.get 7
                    i32.const 3
                    i32.shl
                    i32.add
                    i32.add
                    i32.const 12
                    i32.add
                    local.tee 12
                    i32.store offset=28
                    local.get 10
                    local.get 3
                    local.get 6
                    i32.add
                    i32.load8_u
                    i32.ne
                    local.set 8
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 8
                      br_if 1 (;@8;)
                      local.get 5
                      local.get 0
                      i32.load offset=24
                      local.tee 13
                      i32.store offset=32
                      local.get 5
                      local.get 0
                      i32.load offset=28
                      local.tee 8
                      i32.store offset=36
                      local.get 8
                      i32.eqz
                      br_if 6 (;@3;)
                    end
                    local.get 14
                    i32.const 0
                    global.get 1
                    select
                    i32.eqz
                    if  ;; label = @9
                      local.get 1
                      local.get 11
                      local.get 7
                      local.get 13
                      local.get 8
                      call_indirect (type 2)
                      local.set 4
                      i32.const 0
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.get 4
                      local.set 7
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 7
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee 7
                      br_if 1 (;@8;)
                      local.get 2
                      local.get 12
                      local.get 0
                      i32.load offset=16
                      call $memcpy
                      drop
                      br 7 (;@2;)
                    end
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    br 2 (;@6;)
                  end
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 5
                local.get 6
                i32.load offset=8
                local.tee 6
                i32.store offset=40
                br 2 (;@4;)
              end
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 2
            i32.const 0
            local.get 0
            i32.load offset=16
            call $memset
            drop
            br 2 (;@2;)
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          call $runtime.nilPanic
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 65860
        local.get 9
        i32.store
        local.get 5
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 6
        i32.const 0
        i32.ne
        return
      end
      unreachable
    end
    local.set 4
    global.get 2
    i32.load
    local.get 4
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 4
    local.get 0
    i32.store
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    local.get 2
    i32.store offset=8
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 5
    i32.store offset=16
    local.get 4
    local.get 6
    i32.store offset=20
    local.get 4
    local.get 7
    i32.store offset=24
    local.get 4
    local.get 8
    i32.store offset=28
    local.get 4
    local.get 9
    i32.store offset=32
    local.get 4
    local.get 10
    i32.store offset=36
    local.get 4
    local.get 11
    i32.store offset=40
    local.get 4
    local.get 12
    i32.store offset=44
    local.get 4
    local.get 13
    i32.store offset=48
    global.get 2
    global.get 2
    i32.load
    i32.const 52
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapBucketAddrForHash (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=12
    i32.add
    i32.const 3
    i32.shl
    i32.const 12
    i32.add
    i32.const -1
    i32.const -1
    local.get 0
    i32.load8_u offset=20
    local.tee 0
    i32.shl
    i32.const -1
    i32.xor
    local.get 0
    i32.const 31
    i32.gt_u
    select
    local.get 1
    i32.and
    i32.mul
    i32.add)
  (func $runtime.hashmapSet (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 68
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 5
      i32.load
      local.set 0
      local.get 5
      i32.load offset=8
      local.set 2
      local.get 5
      i32.load offset=12
      local.set 3
      local.get 5
      i32.load offset=16
      local.set 4
      local.get 5
      i32.load offset=20
      local.set 6
      local.get 5
      i32.load offset=24
      local.set 7
      local.get 5
      i32.load offset=28
      local.set 8
      local.get 5
      i32.load offset=32
      local.set 9
      local.get 5
      i32.load offset=36
      local.set 10
      local.get 5
      i32.load offset=40
      local.set 11
      local.get 5
      i32.load offset=44
      local.set 12
      local.get 5
      i32.load offset=48
      local.set 13
      local.get 5
      i32.load offset=52
      local.set 14
      local.get 5
      i32.load offset=56
      local.set 16
      local.get 5
      i32.load offset=60
      local.set 17
      local.get 5
      i32.load offset=64
      local.set 18
      local.get 5
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
        local.set 15
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 272
        i32.sub
        local.tee 4
        global.set $__stack_pointer
        local.get 4
        i32.const 55
        i32.store offset=44
        local.get 4
        i32.const 48
        i32.add
        i32.const 0
        i32.const 220
        call $memset
        drop
        local.get 4
        i32.const 65860
        i32.load
        local.tee 18
        i32.store offset=40
        i32.const 65860
        local.get 4
        i32.const 40
        i32.add
        i32.store
        local.get 0
        i32.eqz
        local.set 6
      end
      block  ;; label = @2
        block  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 6
            br_if 1 (;@3;)
            local.get 0
            i32.load8_u offset=20
            local.tee 7
            i32.const 29
            i32.gt_u
            local.set 6
          end
          block  ;; label = @4
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 6
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=8
              local.tee 9
              i32.const 6
              local.get 7
              i32.shl
              i32.le_u
              local.tee 6
              br_if 1 (;@4;)
              local.get 4
              i64.const 0
              i64.store offset=16
              local.get 4
              local.get 0
              i32.load offset=36
              local.tee 3
              i32.store offset=64
              local.get 4
              local.get 0
              i32.load offset=32
              local.tee 6
              i32.store offset=60
              local.get 4
              local.get 0
              i32.load offset=28
              local.tee 10
              i32.store offset=56
              local.get 4
              local.get 0
              i32.load offset=24
              local.tee 8
              i32.store offset=52
              local.get 4
              local.get 0
              i32.load
              i32.store offset=48
              local.get 4
              local.get 3
              i32.store offset=36
              local.get 4
              local.get 6
              i32.store offset=32
              local.get 4
              local.get 10
              i32.store offset=28
              local.get 4
              local.get 8
              i32.store offset=24
              local.get 4
              local.get 0
              i32.load offset=16
              i32.store offset=16
              local.get 4
              local.get 0
              i32.load offset=12
              i32.store offset=12
              i32.const 65736
              i32.load
              local.tee 3
              i32.const 7
              i32.shl
              local.set 6
              local.get 3
              local.get 6
              i32.xor
              local.tee 3
              i32.const 1
              i32.shr_u
              local.set 6
              local.get 3
              local.get 6
              i32.xor
              local.tee 3
              i32.const 9
              i32.shl
              local.set 6
              i32.const 65736
              local.get 3
              local.get 6
              i32.xor
              local.tee 3
              i32.store
              local.get 4
              i32.const 0
              i32.store offset=8
              local.get 4
              local.get 3
              i32.store offset=4
              local.get 4
              local.get 7
              i32.const 1
              i32.add
              local.tee 3
              i32.store8 offset=20
              local.get 4
              local.get 0
              i32.load offset=16
              local.get 0
              i32.load offset=12
              i32.add
              i32.const 3
              i32.shl
              i32.const 12
              i32.add
              local.tee 6
              local.get 3
              i32.shl
              call $runtime.alloc
              local.tee 3
              i32.store
              local.get 4
              local.get 3
              i32.store offset=68
              local.get 4
              local.get 0
              i32.load offset=12
              call $runtime.alloc
              local.tee 16
              i32.store offset=72
              local.get 4
              local.get 0
              i32.load offset=16
              call $runtime.alloc
              local.tee 14
              i32.store offset=76
              i32.const 0
              local.set 9
              i32.const 0
              local.set 13
              i32.const 0
              local.set 12
              i32.const 0
              local.set 7
              i32.const 0
              local.set 3
            end
            loop  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 12
                i32.store offset=80
                local.get 12
                i32.eqz
                if  ;; label = @7
                  local.get 4
                  local.get 0
                  i32.load
                  local.tee 12
                  i32.store offset=84
                  i32.const 0
                  i32.const 1
                  local.get 0
                  i32.load8_u offset=20
                  local.tee 6
                  i32.shl
                  local.tee 8
                  local.get 6
                  i32.const 31
                  i32.gt_u
                  local.tee 6
                  select
                  local.set 13
                end
                local.get 4
                local.get 12
                i32.store offset=100
                local.get 4
                local.get 12
                i32.store offset=120
              end
              block  ;; label = @6
                loop  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 4
                    local.get 3
                    i32.store offset=88
                    local.get 7
                    i32.const 255
                    i32.and
                    i32.const 8
                    i32.lt_u
                    local.tee 6
                    i32.eqz
                    if  ;; label = @9
                      local.get 3
                      i32.eqz
                      local.tee 6
                      br_if 6 (;@3;)
                      local.get 4
                      local.get 3
                      i32.load offset=8
                      local.tee 3
                      i32.store offset=92
                      i32.const 0
                      local.set 7
                    end
                    local.get 4
                    local.get 3
                    i32.store offset=96
                    local.get 3
                    i32.eqz
                    if  ;; label = @9
                      local.get 9
                      local.get 13
                      i32.ge_u
                      local.tee 3
                      br_if 3 (;@6;)
                      local.get 4
                      local.get 12
                      local.get 9
                      local.get 0
                      i32.load offset=16
                      local.get 0
                      i32.load offset=12
                      i32.add
                      i32.const 3
                      i32.shl
                      i32.const 12
                      i32.add
                      i32.mul
                      i32.add
                      local.tee 3
                      i32.store offset=104
                      local.get 9
                      i32.const 1
                      i32.add
                      local.set 9
                    end
                    local.get 4
                    local.get 3
                    i32.store offset=112
                    local.get 4
                    local.get 3
                    i32.store offset=128
                    local.get 4
                    local.get 3
                    i32.store offset=108
                    local.get 3
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 7
                    i32.const 255
                    i32.and
                    local.tee 8
                    local.get 3
                    i32.add
                    i32.load8_u
                    local.tee 6
                    i32.eqz
                    if  ;; label = @9
                      local.get 7
                      i32.const 1
                      i32.add
                      local.set 7
                      br 2 (;@7;)
                    end
                    local.get 4
                    local.get 0
                    i32.load offset=12
                    local.tee 10
                    local.get 8
                    i32.mul
                    local.get 3
                    i32.add
                    i32.const 12
                    i32.add
                    local.tee 6
                    i32.store offset=116
                    local.get 16
                    local.get 6
                    local.get 10
                    call $memcpy
                    local.set 6
                    local.get 4
                    local.get 0
                    i32.load
                    local.tee 11
                    i32.store offset=124
                    local.get 11
                    local.get 12
                    i32.ne
                    local.set 11
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 11
                      i32.eqz
                      if  ;; label = @10
                        local.get 10
                        i32.const 3
                        i32.shl
                        local.set 11
                        local.get 4
                        local.get 11
                        local.get 0
                        i32.load offset=16
                        local.tee 10
                        local.get 8
                        i32.mul
                        i32.add
                        local.get 3
                        i32.add
                        i32.const 12
                        i32.add
                        local.tee 8
                        i32.store offset=132
                        local.get 14
                        local.get 8
                        local.get 10
                        call $memcpy
                        local.set 8
                        local.get 7
                        i32.const 1
                        i32.add
                        local.set 7
                        br 2 (;@8;)
                      end
                      local.get 4
                      local.get 0
                      i32.load offset=32
                      local.tee 11
                      i32.store offset=136
                      local.get 4
                      local.get 0
                      i32.load offset=36
                      local.tee 8
                      i32.store offset=140
                      local.get 8
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 0
                      i32.load offset=4
                      local.set 17
                      local.get 7
                      i32.const 1
                      i32.add
                      local.set 7
                    end
                    local.get 15
                    i32.const 0
                    global.get 1
                    select
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      local.get 10
                      local.get 17
                      local.get 11
                      local.get 8
                      call_indirect (type 2)
                      local.set 5
                      i32.const 0
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.get 5
                      local.set 8
                    end
                    local.get 15
                    i32.const 1
                    i32.eq
                    i32.const 1
                    global.get 1
                    select
                    if  ;; label = @9
                      local.get 0
                      local.get 6
                      local.get 14
                      local.get 8
                      call $runtime.hashmapGet
                      local.set 5
                      i32.const 1
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.get 5
                      local.set 8
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 8
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee 8
                      br_if 2 (;@7;)
                    end
                  end
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 4
                  local.get 4
                  i32.load offset=32
                  local.tee 8
                  i32.store offset=144
                  local.get 4
                  local.get 4
                  i32.load offset=36
                  local.tee 10
                  i32.store offset=148
                  local.get 10
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 4
                  i32.load offset=4
                  local.set 17
                  local.get 4
                  i32.load offset=12
                  local.set 11
                end
                local.get 15
                i32.const 2
                i32.eq
                i32.const 1
                global.get 1
                select
                if  ;; label = @7
                  local.get 6
                  local.get 11
                  local.get 17
                  local.get 8
                  local.get 10
                  call_indirect (type 2)
                  local.set 5
                  i32.const 2
                  global.get 1
                  i32.const 1
                  i32.eq
                  br_if 6 (;@1;)
                  drop
                  local.get 5
                  local.set 8
                end
                local.get 15
                i32.const 3
                i32.eq
                i32.const 1
                global.get 1
                select
                if  ;; label = @7
                  local.get 4
                  local.get 6
                  local.get 14
                  local.get 8
                  call $runtime.hashmapSet
                  i32.const 3
                  global.get 1
                  i32.const 1
                  i32.eq
                  br_if 6 (;@1;)
                  drop
                end
                global.get 1
                i32.eqz
                br_if 1 (;@5;)
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 0
              local.get 4
              i32.load
              local.tee 3
              i32.store
              local.get 0
              local.get 4
              i64.load offset=4 align=4
              i64.store offset=4 align=4
              local.get 0
              local.get 4
              i64.load offset=12 align=4
              i64.store offset=12 align=4
              local.get 0
              local.get 4
              i32.load8_u offset=20
              i32.store8 offset=20
              local.get 0
              local.get 4
              i32.load offset=24
              local.tee 7
              i32.store offset=24
              local.get 0
              local.get 4
              i32.load offset=28
              local.tee 6
              i32.store offset=28
              local.get 0
              local.get 4
              i32.load offset=32
              local.tee 10
              i32.store offset=32
              local.get 0
              local.get 4
              i32.load offset=36
              local.tee 8
              i32.store offset=36
              local.get 4
              local.get 3
              i32.store offset=152
              local.get 4
              local.get 7
              i32.store offset=156
              local.get 4
              local.get 6
              i32.store offset=160
              local.get 4
              local.get 10
              i32.store offset=164
              local.get 4
              local.get 8
              i32.store offset=168
              local.get 4
              local.get 0
              i32.load offset=32
              local.tee 7
              i32.store offset=172
              local.get 4
              local.get 0
              i32.load offset=36
              local.tee 3
              i32.store offset=176
              local.get 3
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=4
              local.set 9
              local.get 0
              i32.load offset=12
              local.set 6
            end
            local.get 15
            i32.const 4
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              local.get 1
              local.get 6
              local.get 9
              local.get 7
              local.get 3
              call_indirect (type 2)
              local.set 5
              i32.const 4
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.get 5
              local.set 3
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 4
            local.get 0
            local.get 3
            call $runtime.hashmapBucketAddrForHash
            local.tee 9
            i32.store offset=180
            local.get 3
            i32.const 24
            i32.shr_u
            local.tee 3
            i32.const 1
            local.get 3
            select
            local.set 13
            i32.const 0
            local.set 7
            i32.const 0
            local.set 8
            i32.const 0
            local.set 10
            i32.const 0
            local.set 3
          end
          loop  ;; label = @4
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 3
                i32.store offset=196
                local.get 4
                local.get 9
                local.tee 6
                i32.store offset=200
                local.get 4
                local.get 7
                i32.store offset=192
                local.get 4
                local.get 8
                i32.store offset=188
                local.get 4
                local.get 10
                i32.store offset=184
                local.get 6
                i32.eqz
                local.tee 9
                br_if 1 (;@5;)
                i32.const 0
                local.set 3
              end
              loop  ;; label = @6
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 4
                    local.get 8
                    i32.store offset=208
                    local.get 4
                    local.get 7
                    i32.store offset=212
                    local.get 4
                    local.get 10
                    i32.store offset=204
                    local.get 3
                    i32.const 8
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 4
                    local.get 0
                    i32.load offset=12
                    local.tee 12
                    local.get 3
                    i32.mul
                    local.get 6
                    i32.add
                    i32.const 12
                    i32.add
                    local.tee 14
                    i32.store offset=216
                    local.get 4
                    local.get 0
                    i32.load offset=16
                    local.get 3
                    i32.mul
                    local.get 12
                    i32.const 3
                    i32.shl
                    i32.add
                    local.get 6
                    i32.add
                    i32.const 12
                    i32.add
                    local.tee 16
                    i32.store offset=220
                    local.get 4
                    local.get 7
                    local.get 14
                    local.get 3
                    local.get 6
                    i32.add
                    local.tee 9
                    i32.load8_u
                    local.get 7
                    i32.or
                    local.tee 11
                    select
                    local.tee 7
                    i32.store offset=232
                    local.get 4
                    local.get 10
                    local.get 9
                    local.get 11
                    select
                    local.tee 10
                    i32.store offset=224
                    local.get 4
                    local.get 8
                    local.get 16
                    local.get 11
                    select
                    local.tee 8
                    i32.store offset=228
                    local.get 13
                    local.get 9
                    i32.load8_u
                    i32.ne
                    local.set 9
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 9
                      br_if 1 (;@8;)
                      local.get 4
                      local.get 0
                      i32.load offset=24
                      local.tee 11
                      i32.store offset=236
                      local.get 4
                      local.get 0
                      i32.load offset=28
                      local.tee 9
                      i32.store offset=240
                      local.get 9
                      i32.eqz
                      br_if 6 (;@3;)
                    end
                    local.get 15
                    i32.const 5
                    i32.eq
                    i32.const 1
                    global.get 1
                    select
                    if  ;; label = @9
                      local.get 1
                      local.get 14
                      local.get 12
                      local.get 11
                      local.get 9
                      call_indirect (type 2)
                      local.set 5
                      i32.const 5
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.get 5
                      local.set 9
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 9
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee 9
                      br_if 1 (;@8;)
                      local.get 16
                      local.get 2
                      local.get 0
                      i32.load offset=16
                      call $memcpy
                      drop
                      br 7 (;@2;)
                    end
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    br 2 (;@6;)
                  end
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 6
                i32.load offset=8
                local.tee 9
                i32.store offset=244
                local.get 6
                local.set 3
                br 2 (;@4;)
              end
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 7
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.load offset=16
              local.get 0
              i32.load offset=12
              i32.add
              i32.const 3
              i32.shl
              i32.const 12
              i32.add
              call $runtime.alloc
              local.set 7
              local.get 0
              local.get 0
              i32.load offset=8
              i32.const 1
              i32.add
              i32.store offset=8
              local.get 4
              local.get 7
              i32.store offset=252
              local.get 4
              local.get 7
              i32.store offset=264
              local.get 4
              local.get 7
              i32.store offset=248
              local.get 4
              local.get 7
              i32.const 12
              i32.add
              local.tee 6
              i32.store offset=256
              local.get 4
              local.get 0
              i32.load offset=12
              local.tee 10
              i32.const 3
              i32.shl
              local.get 6
              i32.add
              local.tee 8
              i32.store offset=260
              local.get 6
              local.get 1
              local.get 10
              call $memcpy
              drop
              local.get 8
              local.get 2
              local.get 0
              i32.load offset=16
              call $memcpy
              drop
              local.get 7
              local.get 13
              i32.store8
              local.get 3
              i32.eqz
              br_if 2 (;@3;)
              local.get 3
              local.get 7
              i32.store offset=8
              br 3 (;@2;)
            end
            local.get 0
            local.get 0
            i32.load offset=8
            i32.const 1
            i32.add
            i32.store offset=8
            local.get 7
            local.get 1
            local.get 0
            i32.load offset=12
            call $memcpy
            drop
            local.get 8
            local.get 2
            local.get 0
            i32.load offset=16
            call $memcpy
            drop
            local.get 10
            i32.eqz
            br_if 1 (;@3;)
            local.get 10
            local.get 13
            i32.store8
            br 2 (;@2;)
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          call $runtime.nilPanic
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 65860
        local.get 18
        i32.store
        local.get 4
        i32.const 272
        i32.add
        global.set $__stack_pointer
      end
      return
    end
    local.set 5
    global.get 2
    i32.load
    local.get 5
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 5
    local.get 0
    i32.store
    local.get 5
    local.get 1
    i32.store offset=4
    local.get 5
    local.get 2
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=12
    local.get 5
    local.get 4
    i32.store offset=16
    local.get 5
    local.get 6
    i32.store offset=20
    local.get 5
    local.get 7
    i32.store offset=24
    local.get 5
    local.get 8
    i32.store offset=28
    local.get 5
    local.get 9
    i32.store offset=32
    local.get 5
    local.get 10
    i32.store offset=36
    local.get 5
    local.get 11
    i32.store offset=40
    local.get 5
    local.get 12
    i32.store offset=44
    local.get 5
    local.get 13
    i32.store offset=48
    local.get 5
    local.get 14
    i32.store offset=52
    local.get 5
    local.get 16
    i32.store offset=56
    local.get 5
    local.get 17
    i32.store offset=60
    local.get 5
    local.get 18
    i32.store offset=64
    global.get 2
    global.get 2
    i32.load
    i32.const 68
    i32.add
    i32.store)
  (func $mymem (type 3) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    i32.const 4
    i32.store offset=12
    i32.const 65860
    i32.load
    local.set 6
    i32.const 65860
    local.get 0
    i32.const 8
    i32.add
    i32.store
    local.get 0
    local.get 6
    i32.store offset=8
    loop  ;; label = @1
      local.get 0
      local.get 2
      i32.store offset=16
      local.get 5
      i32.const 10
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 7
        i32.lt_u
        if  ;; label = @3
          local.get 1
          i32.const 1
          i32.shl
          local.tee 1
          i32.const 1
          local.get 1
          select
          local.set 4
          loop  ;; label = @4
            local.get 4
            local.tee 1
            i32.const 1
            i32.shl
            local.set 4
            local.get 1
            local.get 7
            i32.lt_u
            br_if 0 (;@4;)
          end
          local.get 0
          local.get 1
          i32.const 2
          i32.shl
          call $runtime.alloc
          local.tee 4
          i32.store offset=20
          local.get 3
          if  ;; label = @4
            local.get 4
            local.get 2
            local.get 3
            i32.const 2
            i32.shl
            call $memcpy
            drop
          end
          local.get 4
          local.set 2
        end
        local.get 0
        local.get 2
        i32.store offset=24
        local.get 0
        local.get 2
        i32.store offset=28
        local.get 2
        local.get 3
        i32.const 2
        i32.shl
        i32.add
        local.get 5
        i32.store align=1
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        local.get 7
        local.set 3
        br 1 (;@1;)
      end
    end
    i32.const 65860
    local.get 6
    i32.store
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
    i32.const 5)
  (func $malloc.command_export (type 5) (param i32) (result i32)
    (local i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get 2
      i32.load
      i32.load
      local.set 0
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if (result i32)  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
      else
        i32.const 0
      end
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 0
        call $malloc
        local.set 1
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 1
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        call $__wasm_call_dtors
        local.get 0
        return
      end
      unreachable
    end
    local.set 1
    global.get 2
    i32.load
    local.get 1
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0)
  (func $free.command_export (type 1) (param i32)
    (local i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 4
      i32.sub
      i32.store
      global.get 2
      i32.load
      i32.load
      local.set 0
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if (result i32)  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
      else
        i32.const 0
      end
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 0
        call $free
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        call $__wasm_call_dtors
      end
      return
    end
    local.set 1
    global.get 2
    i32.load
    local.get 1
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.get 0
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store)
  (func $calloc.command_export (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if (result i32)  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
      else
        i32.const 0
      end
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 1
        call $calloc
        local.set 2
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 2
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        call $__wasm_call_dtors
        local.get 0
        return
      end
      unreachable
    end
    local.set 2
    global.get 2
    i32.load
    local.get 2
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    global.get 2
    global.get 2
    i32.load
    i32.const 8
    i32.add
    i32.store
    i32.const 0)
  (func $realloc.command_export (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 8
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 1
      i32.const 2
      i32.eq
      if (result i32)  ;; label = @2
        global.get 2
        global.get 2
        i32.load
        i32.const 4
        i32.sub
        i32.store
        global.get 2
        i32.load
        i32.load
      else
        i32.const 0
      end
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 1
        call $realloc
        local.set 2
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 2
        local.set 0
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        call $__wasm_call_dtors
        local.get 0
        return
      end
      unreachable
    end
    local.set 2
    global.get 2
    i32.load
    local.get 2
    i32.store
    global.get 2
    global.get 2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 2
    i32.load
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    global.get 2
    global.get 2
    i32.load
    i32.const 8
    i32.add
    i32.store
    i32.const 0)
  (func $_start.command_export (type 0)
    call $_start
    call $__wasm_call_dtors)
  (func $resume.command_export (type 0)
    call $resume
    call $__wasm_call_dtors)
  (func $go_scheduler.command_export (type 0)
    call $go_scheduler
    call $__wasm_call_dtors)
  (func $mymem.command_export (type 3) (result i32)
    (local i32)
    call $mymem
    local.set 0
    call $__wasm_call_dtors
    local.get 0)
  (func $zkmain.command_export (type 0)
    call $zkmain
    call $__wasm_call_dtors)
  (func $asyncify_start_unwind (type 1) (param i32)
    i32.const 1
    global.set 1
    local.get 0
    global.set 2
    global.get 2
    i32.load
    global.get 2
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func $asyncify_stop_unwind (type 0)
    i32.const 0
    global.set 1
    global.get 2
    i32.load
    global.get 2
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func $asyncify_start_rewind (type 1) (param i32)
    i32.const 2
    global.set 1
    local.get 0
    global.set 2
    global.get 2
    i32.load
    global.get 2
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func $asyncify_stop_rewind (type 0)
    i32.const 0
    global.set 1
    global.get 2
    i32.load
    global.get 2
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func $asyncify_get_state (type 3) (result i32)
    global.get 1)
  (table (;0;) 5 5 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 65536))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "malloc" (func $malloc.command_export))
  (export "free" (func $free.command_export))
  (export "calloc" (func $calloc.command_export))
  (export "realloc" (func $realloc.command_export))
  (export "_start" (func $_start.command_export))
  (export "resume" (func $resume.command_export))
  (export "go_scheduler" (func $go_scheduler.command_export))
  (export "mymem" (func $mymem.command_export))
  (export "zkmain" (func $zkmain.command_export))
  (export "asyncify_start_unwind" (func $asyncify_start_unwind))
  (export "asyncify_stop_unwind" (func $asyncify_stop_unwind))
  (export "asyncify_start_rewind" (func $asyncify_start_rewind))
  (export "asyncify_stop_rewind" (func $asyncify_stop_rewind))
  (export "asyncify_get_state" (func $asyncify_get_state))
  (elem (;0;) (i32.const 1) func $runtime.run$1$gowrapper $runtime.resume$1$gowrapper $runtime.memequal $runtime.hash32)
  (data $.rodata (i32.const 65536) "stack overflowfree: invalid pointer\00\00\00\00\00\0e\00\01\00\15\00\00\00realloc: invalid pointer0\00\01\00\18\00\00\00out of memorypanic: panic: runtime error: nil pointer dereferenceindex out of rangeslice out of rangeunreachable\b5\00\01\00\0b")
  (data $.data (i32.const 65736) "\c1\82\01\00L\01\01\00\c1\82\01\00\00\00\00\00\04\00\00\00\0c\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04"))
