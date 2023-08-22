(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32)))
  (type (;9;) (func (result i32)))
  (func $memset (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8
      local.get 0
      local.get 1
      i32.add
      local.tee 2
      i32.const 1
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=2
      local.get 0
      i32.const 0
      i32.store8 offset=1
      local.get 2
      i32.const 3
      i32.sub
      i32.const 0
      i32.store8
      local.get 2
      i32.const 2
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=3
      local.get 2
      i32.const 4
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 3
      i32.add
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 1
      local.get 3
      i32.sub
      i32.const -4
      i32.and
      local.tee 3
      i32.add
      local.tee 1
      i32.const 4
      i32.sub
      i32.const 0
      i32.store
      local.get 3
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      i32.store offset=8
      local.get 2
      i32.const 0
      i32.store offset=4
      local.get 1
      i32.const 8
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 12
      i32.sub
      i32.const 0
      i32.store
      local.get 3
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      i32.store offset=24
      local.get 2
      i32.const 0
      i32.store offset=20
      local.get 2
      i32.const 0
      i32.store offset=16
      local.get 2
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.const 16
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 20
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 24
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 28
      i32.sub
      i32.const 0
      i32.store
      local.get 3
      local.get 2
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 3
      i32.sub
      local.tee 1
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 2
        i64.const 0
        i64.store offset=24
        local.get 2
        i64.const 0
        i64.store offset=16
        local.get 2
        i64.const 0
        i64.store offset=8
        local.get 2
        i64.const 0
        i64.store
        local.get 2
        i32.const 32
        i32.add
        local.set 2
        local.get 1
        i32.const 32
        i32.sub
        local.tee 1
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcpy (type 6) (param i32 i32 i32) (result i32)
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
              local.get 3
              i32.const 16
              i32.add
              local.set 3
              local.get 4
              i32.const 16
              i32.add
              local.set 4
              local.get 1
              local.set 5
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
              local.tee 2
              i32.store8
              local.get 3
              local.get 2
              i32.const 16
              i32.shr_u
              i32.store8 offset=2
              local.get 3
              local.get 2
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
                local.tee 6
                i32.const 4
                i32.add
                i32.load
                local.tee 7
                i32.const 8
                i32.shl
                local.get 2
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 3
                i32.const 4
                i32.add
                local.get 6
                i32.const 8
                i32.add
                i32.load
                local.tee 2
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
                local.get 6
                i32.const 12
                i32.add
                i32.load
                local.tee 7
                i32.const 8
                i32.shl
                local.get 2
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 3
                i32.const 12
                i32.add
                local.get 6
                i32.const 16
                i32.add
                i32.load
                local.tee 2
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
            local.tee 2
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
              local.tee 6
              i32.const 4
              i32.add
              i32.load
              local.tee 7
              i32.const 16
              i32.shl
              local.get 2
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 6
              i32.const 8
              i32.add
              i32.load
              local.tee 2
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
              local.get 6
              i32.const 12
              i32.add
              i32.load
              local.tee 7
              i32.const 16
              i32.shl
              local.get 2
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 3
              i32.const 12
              i32.add
              local.get 6
              i32.const 16
              i32.add
              i32.load
              local.tee 2
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
          local.tee 2
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
            local.tee 6
            i32.const 4
            i32.add
            i32.load
            local.tee 7
            i32.const 24
            i32.shl
            local.get 2
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 4
            i32.add
            local.get 6
            i32.const 8
            i32.add
            i32.load
            local.tee 2
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
            local.get 6
            i32.const 12
            i32.add
            i32.load
            local.tee 7
            i32.const 24
            i32.shl
            local.get 2
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 3
            i32.const 12
            i32.add
            local.get 6
            i32.const 16
            i32.add
            i32.load
            local.tee 2
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
  (func $_*internal/task.Queue_.Push (type 0) (param i32)
    (local i32)
    i32.const 65600
    i32.load
    local.tee 1
    if  ;; label = @1
      local.get 1
      local.get 0
      i32.store
    end
    i32.const 65600
    local.get 0
    i32.store
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.const 0
      i32.store
      i32.const 65596
      i32.load
      i32.eqz
      if  ;; label = @2
        i32.const 65596
        local.get 0
        i32.store
      end
      return
    end
    unreachable)
  (func $internal/task.start (type 5) (param i32 i32)
    (local i32)
    i32.const 40
    call $runtime.alloc
    local.tee 2
    local.get 0
    i32.store offset=16
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    i32.store
    local.get 2
    i32.const 24
    i32.add
    i32.const 16384
    call $runtime.alloc
    local.tee 0
    i32.store
    local.get 0
    i32.const -1204030091
    i32.store
    local.get 2
    i32.const 28
    i32.add
    local.get 0
    i32.const 16384
    i32.add
    i32.store
    local.get 2
    call $_*internal/task.Queue_.Push)
  (func $runtime.alloc (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 65616
    i32.const 65616
    i64.load
    i64.const 1
    i64.add
    i64.store
    i32.const 65540
    i32.const 65540
    i32.load
    local.tee 3
    local.get 0
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 1
    i32.add
    local.tee 0
    i32.store
    i32.const 65608
    i32.const 65608
    i64.load
    local.get 1
    i64.extend_i32_u
    i64.add
    i64.store
    i32.const 65592
    i32.load
    local.set 2
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.get 2
        i32.lt_u
        br_if 1 (;@1;)
        memory.size
        memory.grow
        i32.const -1
        i32.ne
        if  ;; label = @3
          i32.const 65592
          memory.size
          i32.const 16
          i32.shl
          local.tee 2
          i32.store
          i32.const 65540
          i32.load
          local.set 0
          br 1 (;@2;)
        end
      end
      unreachable
    end
    local.get 3
    local.get 1
    call $memset)
  (func $internal/task.Pause (type 3)
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
        i32.const 65588
        i32.load
        local.tee 0
        i32.eqz
        local.set 2
      end
      block  ;; label = @2
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 2
          br_if 1 (;@2;)
          local.get 0
          i32.const 24
          i32.add
          local.tee 0
          i32.load
          i32.load
          i32.const -1204030091
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 0
        global.get 1
        select
        i32.eqz
        if  ;; label = @3
          i32.const 65584
          i32.load8_u
          if  ;; label = @4
            call $asyncify_stop_unwind
            i32.const 65584
            i32.const 0
            i32.store8
          else
            local.get 0
            global.get $__stack_pointer
            i32.store offset=4
            local.get 0
            call $asyncify_start_unwind
          end
          i32.const 0
          global.get 1
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          drop
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          i32.const 65588
          i32.load
          local.tee 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 24
          i32.add
          i32.load
          i32.const -1204030091
          i32.store
          return
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
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
  (func $runtime.memequal (type 1) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 3
    block (result i32)  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 2
        local.get 3
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 1
        local.get 3
        i32.add
        local.set 4
        local.get 0
        local.get 3
        i32.add
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        i32.load8_u
        local.get 4
        i32.load8_u
        i32.eq
        br_if 0 (;@2;)
      end
      local.get 3
      i32.const 1
      i32.sub
    end
    local.get 2
    i32.ge_u)
  (func $runtime.hash32 (type 1) (param i32 i32 i32 i32) (result i32)
    local.get 1
    i32.const -962287725
    i32.mul
    local.get 2
    i32.xor
    i32.const -1130422988
    i32.xor
    local.set 2
    loop  ;; label = @1
      local.get 1
      i32.const 4
      i32.lt_s
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.load align=1
        local.get 2
        i32.add
        i32.const -962287725
        i32.mul
        local.tee 2
        i32.const 16
        i32.shr_u
        local.get 2
        i32.xor
        local.set 2
        local.get 1
        i32.const 4
        i32.sub
        local.set 1
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.sub
            br_table 2 (;@2;) 1 (;@3;) 0 (;@4;) 3 (;@1;)
          end
          local.get 0
          i32.load8_u offset=2
          i32.const 16
          i32.shl
          local.get 2
          i32.add
          local.set 2
        end
        local.get 0
        i32.load8_u offset=1
        i32.const 8
        i32.shl
        local.get 2
        i32.add
        local.set 2
      end
      local.get 2
      local.get 0
      i32.load8_u
      i32.add
      i32.const -962287725
      i32.mul
      local.tee 0
      i32.const 24
      i32.shr_u
      local.get 0
      i32.xor
      local.set 2
    end
    local.get 2)
  (func $malloc (type 4) (param i32) (result i32)
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
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 2
      local.get 1
      i32.load offset=8
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
        local.set 3
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 16
        i32.sub
        local.tee 2
        global.set $__stack_pointer
      end
      block  ;; label = @2
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.set 1
            br 2 (;@2;)
          end
          local.get 0
          i32.const 0
          i32.lt_s
          local.set 1
        end
        block  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 1
            br_if 1 (;@3;)
            local.get 0
            call $runtime.alloc
            local.set 1
            local.get 2
            local.get 0
            i32.store offset=8
            local.get 2
            local.get 0
            i32.store offset=4
            local.get 2
            local.get 1
            i32.store
            local.get 2
            local.get 1
            i32.store offset=12
            local.get 2
            i32.const 12
            i32.add
            local.set 0
          end
          local.get 3
          i32.const 0
          global.get 1
          select
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.get 2
            call $runtime.hashmapBinarySet
            i32.const 0
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
          end
          global.get 1
          i32.eqz
          br_if 1 (;@2;)
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 2
        i32.const 16
        i32.add
        global.set $__stack_pointer
        local.get 1
        return
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
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapBinarySet (type 5) (param i32 i32)
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
        i32.const 65556
        i32.load
        i32.const 65548
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
        i32.const 65544
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
  (func $free (type 0) (param i32)
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
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 2
      local.get 1
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
        local.set 4
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        global.get $__stack_pointer
        i32.const 16
        i32.sub
        local.tee 2
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
            local.get 2
            local.get 0
            i32.store offset=12
            local.get 2
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
            local.get 2
            call $runtime.hashmapBinaryGet
            i32.const 0
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
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
            local.get 2
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
            local.get 2
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
          local.get 2
          i32.const 16
          i32.add
          global.set $__stack_pointer
          return
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
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
  (func $runtime.hashmapBinaryGet (type 2) (param i32 i32) (result i32)
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
        i32.const 65556
        i32.load
        i32.const 65548
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
        i32.const 65544
        local.get 0
        local.get 1
        local.get 3
        call $runtime.hashmapGet
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
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
  (func $runtime.hashmapBinaryDelete (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 1
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 2
      global.get 2
      i32.load
      i32.const 36
      i32.sub
      i32.store
      global.get 2
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 3
      local.get 1
      i32.load offset=8
      local.set 4
      local.get 1
      i32.load offset=16
      local.set 7
      local.get 1
      i32.load offset=20
      local.set 5
      local.get 1
      i32.load offset=24
      local.set 6
      local.get 1
      i32.load offset=28
      local.set 8
      local.get 1
      i32.load offset=32
      local.set 9
      local.get 1
      i32.load offset=12
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
        local.set 10
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 65556
        i32.load
        i32.const 65548
        i32.load
        local.get 3
        call $runtime.hash32
        local.tee 3
        i32.const 24
        i32.shr_u
        local.tee 2
        i32.const 1
        local.get 2
        select
        local.set 7
        i32.const 65544
        local.get 3
        call $runtime.hashmapBucketAddrForHash
        local.set 4
      end
      block  ;; label = @2
        loop  ;; label = @3
          global.get 1
          i32.eqz
          if  ;; label = @4
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
                  local.get 7
                  local.get 3
                  local.get 4
                  i32.add
                  local.tee 6
                  i32.load8_u
                  i32.ne
                  local.set 1
                end
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    br_if 1 (;@7;)
                    i32.const 65572
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 4 (;@4;)
                    i32.const 65568
                    i32.load
                    local.set 8
                    i32.const 65556
                    i32.load
                    local.tee 9
                    local.get 3
                    i32.mul
                    local.get 4
                    i32.add
                    i32.const 12
                    i32.add
                    local.set 5
                  end
                  local.get 10
                  i32.const 0
                  global.get 1
                  select
                  i32.eqz
                  if  ;; label = @8
                    local.get 0
                    local.get 5
                    local.get 9
                    local.get 8
                    local.get 1
                    call_indirect (type 1)
                    i32.const 0
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 7 (;@1;)
                    drop
                    local.set 1
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    i32.const 1
                    i32.and
                    i32.eqz
                    local.tee 1
                    br_if 1 (;@7;)
                    local.get 6
                    i32.const 0
                    i32.store8
                    local.get 5
                    i32.const 65556
                    i32.load
                    call $memset
                    drop
                    local.get 4
                    i32.const 65560
                    i32.load
                    local.tee 0
                    local.get 3
                    i32.mul
                    i32.const 65556
                    i32.load
                    i32.const 3
                    i32.shl
                    i32.add
                    i32.add
                    i32.const 12
                    i32.add
                    local.get 0
                    call $memset
                    drop
                    i32.const 65552
                    i32.const 65552
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
          unreachable
        end
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
    local.get 3
    i32.store offset=4
    local.get 2
    local.get 4
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 7
    i32.store offset=16
    local.get 2
    local.get 5
    i32.store offset=20
    local.get 2
    local.get 6
    i32.store offset=24
    local.get 2
    local.get 8
    i32.store offset=28
    local.get 2
    local.get 9
    i32.store offset=32
    global.get 2
    global.get 2
    i32.load
    i32.const 36
    i32.add
    i32.store)
  (func $runtime.run$1$gowrapper (type 0) (param i32)
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
        memory.size
        local.set 0
        i32.const 65624
        i32.const 1
        i32.store8
        i32.const 65592
        local.get 0
        i32.const 16
        i32.shl
        i32.store
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
  (func $runtime.deadlock (type 3)
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
  (func $runtime.hashmapGet (type 1) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
      local.set 2
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 1
      i32.load offset=16
      local.set 5
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
        local.set 12
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 3
        i32.const 24
        i32.shr_u
        local.tee 4
        i32.const 1
        local.get 4
        select
        local.set 9
        local.get 0
        local.get 3
        call $runtime.hashmapBucketAddrForHash
        local.set 5
      end
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 5
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
                    local.tee 6
                    br_if 1 (;@7;)
                    local.get 9
                    local.get 3
                    local.get 5
                    i32.add
                    i32.load8_u
                    i32.ne
                    local.set 6
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      br_if 1 (;@8;)
                      local.get 0
                      i32.load offset=28
                      local.tee 7
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 0
                      i32.load offset=16
                      local.set 10
                      local.get 0
                      i32.load offset=24
                      local.set 11
                      local.get 0
                      i32.load offset=12
                      local.tee 6
                      local.get 3
                      i32.mul
                      local.get 5
                      i32.add
                      i32.const 12
                      i32.add
                      local.set 8
                    end
                    local.get 12
                    i32.const 0
                    global.get 1
                    select
                    i32.eqz
                    if  ;; label = @9
                      local.get 1
                      local.get 8
                      local.get 6
                      local.get 11
                      local.get 7
                      call_indirect (type 1)
                      i32.const 0
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
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
                      local.get 5
                      local.get 3
                      local.get 10
                      i32.mul
                      local.get 6
                      i32.const 3
                      i32.shl
                      i32.add
                      i32.add
                      i32.const 12
                      i32.add
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
                i32.load offset=8
                local.set 5
                br 2 (;@4;)
              end
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 2
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
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 5
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
    global.get 2
    global.get 2
    i32.load
    i32.const 44
    i32.add
    i32.store
    i32.const 0)
  (func $runtime.hashmapBucketAddrForHash (type 2) (param i32 i32) (result i32)
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
  (func $runtime.hashmapSet (type 7) (param i32 i32 i32 i32)
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
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 2
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 1
      i32.load offset=16
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
      i32.load offset=44
      local.set 12
      local.get 1
      i32.load offset=48
      local.set 13
      local.get 1
      i32.load offset=52
      local.set 14
      local.get 1
      i32.load offset=56
      local.set 16
      local.get 1
      i32.load offset=60
      local.set 17
      local.get 1
      i32.load offset=64
      local.set 18
      local.get 1
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
        i32.const 48
        i32.sub
        local.tee 7
        global.set $__stack_pointer
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
            local.tee 6
            i32.const 29
            i32.gt_u
            local.set 4
          end
          block  ;; label = @4
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 4
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=8
              local.tee 8
              i32.const 6
              local.get 6
              i32.shl
              i32.le_u
              local.tee 4
              br_if 1 (;@4;)
              i32.const 65536
              i32.load
              local.tee 3
              i32.const 7
              i32.shl
              local.set 4
              local.get 3
              local.get 4
              i32.xor
              local.tee 3
              i32.const 1
              i32.shr_u
              local.set 4
              local.get 3
              local.get 4
              i32.xor
              local.tee 3
              i32.const 9
              i32.shl
              local.set 4
              i32.const 65536
              local.get 3
              local.get 4
              i32.xor
              local.tee 3
              i32.store
              local.get 7
              i64.const 0
              i64.store offset=24
              local.get 7
              i32.const 0
              i32.store offset=16
              local.get 7
              local.get 0
              i64.load offset=32 align=4
              i64.store offset=40
              local.get 7
              local.get 0
              i64.load offset=24 align=4
              i64.store offset=32
              local.get 7
              local.get 0
              i32.load offset=16
              local.tee 8
              i32.store offset=24
              local.get 7
              local.get 0
              i32.load offset=12
              local.tee 4
              i32.store offset=20
              local.get 7
              local.get 3
              i32.store offset=12
              local.get 7
              local.get 6
              i32.const 1
              i32.add
              local.tee 3
              i32.store8 offset=28
              local.get 7
              local.get 4
              local.get 8
              i32.add
              i32.const 3
              i32.shl
              i32.const 12
              i32.add
              local.get 3
              i32.shl
              call $runtime.alloc
              i32.store offset=8
              local.get 0
              i32.load offset=12
              call $runtime.alloc
              local.set 18
              local.get 0
              i32.load offset=16
              call $runtime.alloc
              local.set 13
              i32.const 0
              local.set 6
              i32.const 0
              local.set 12
              i32.const 0
              local.set 16
              i32.const 0
              local.set 11
              i32.const 0
              local.set 3
            end
            loop  ;; label = @5
              global.get 1
              local.get 11
              i32.or
              i32.eqz
              if  ;; label = @6
                i32.const 0
                i32.const 1
                local.get 0
                i32.load8_u offset=20
                local.tee 5
                i32.shl
                local.tee 4
                local.get 5
                i32.const 31
                i32.gt_u
                local.tee 8
                select
                local.set 16
                local.get 0
                i32.load
                local.set 11
              end
              block  ;; label = @6
                loop  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 6
                    i32.const 255
                    i32.and
                    i32.const 8
                    i32.lt_u
                    local.tee 4
                    i32.eqz
                    if  ;; label = @9
                      local.get 3
                      i32.eqz
                      br_if 6 (;@3;)
                      i32.const 0
                      local.set 6
                      local.get 3
                      i32.load offset=8
                      local.set 3
                    end
                    local.get 3
                    i32.eqz
                    if  ;; label = @9
                      local.get 12
                      local.get 16
                      i32.ge_u
                      local.tee 3
                      br_if 3 (;@6;)
                      local.get 11
                      local.get 12
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
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 12
                      i32.const 1
                      i32.add
                      local.set 12
                    end
                    local.get 6
                    i32.const 255
                    i32.and
                    local.tee 10
                    local.get 3
                    i32.add
                    i32.load8_u
                    local.tee 4
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 6
                      br 2 (;@7;)
                    end
                    local.get 18
                    local.get 10
                    local.get 0
                    i32.load offset=12
                    local.tee 4
                    i32.mul
                    local.get 3
                    i32.add
                    i32.const 12
                    i32.add
                    local.get 4
                    call $memcpy
                    local.set 8
                    local.get 11
                    local.get 0
                    i32.load
                    i32.ne
                    local.set 9
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 9
                      i32.eqz
                      if  ;; label = @10
                        local.get 13
                        local.get 4
                        i32.const 3
                        i32.shl
                        local.tee 9
                        local.get 10
                        local.get 0
                        i32.load offset=16
                        local.tee 5
                        i32.mul
                        i32.add
                        local.get 3
                        i32.add
                        i32.const 12
                        i32.add
                        local.tee 10
                        local.get 5
                        call $memcpy
                        local.set 4
                        local.get 6
                        i32.const 1
                        i32.add
                        local.set 6
                        br 2 (;@8;)
                      end
                      local.get 0
                      i32.load offset=36
                      local.tee 10
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 0
                      i32.load offset=4
                      local.set 9
                      local.get 0
                      i32.load offset=32
                      local.set 14
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 6
                    end
                    local.get 15
                    i32.const 0
                    global.get 1
                    select
                    i32.eqz
                    if  ;; label = @9
                      local.get 8
                      local.get 4
                      local.get 9
                      local.get 14
                      local.get 10
                      call_indirect (type 1)
                      i32.const 0
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.set 4
                    end
                    local.get 15
                    i32.const 1
                    i32.eq
                    i32.const 1
                    global.get 1
                    select
                    if  ;; label = @9
                      local.get 0
                      local.get 8
                      local.get 13
                      local.get 4
                      call $runtime.hashmapGet
                      i32.const 1
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.set 4
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 4
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee 4
                      br_if 2 (;@7;)
                    end
                  end
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 7
                  i32.load offset=44
                  local.tee 4
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 7
                  i32.load offset=12
                  local.set 14
                  local.get 7
                  i32.load offset=40
                  local.set 17
                  local.get 7
                  i32.const 8
                  i32.add
                  local.set 10
                  local.get 7
                  i32.load offset=20
                  local.set 9
                end
                local.get 15
                i32.const 2
                i32.eq
                i32.const 1
                global.get 1
                select
                if  ;; label = @7
                  local.get 8
                  local.get 9
                  local.get 14
                  local.get 17
                  local.get 4
                  call_indirect (type 1)
                  i32.const 2
                  global.get 1
                  i32.const 1
                  i32.eq
                  br_if 6 (;@1;)
                  drop
                  local.set 4
                end
                local.get 15
                i32.const 3
                i32.eq
                i32.const 1
                global.get 1
                select
                if  ;; label = @7
                  local.get 10
                  local.get 8
                  local.get 13
                  local.get 4
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
              local.get 7
              i32.load offset=8
              i32.store
              local.get 0
              local.get 7
              i64.load offset=12 align=4
              i64.store offset=4 align=4
              local.get 0
              local.get 7
              i64.load offset=20 align=4
              i64.store offset=12 align=4
              local.get 0
              local.get 7
              i32.load8_u offset=28
              i32.store8 offset=20
              local.get 0
              local.get 7
              i64.load offset=32
              i64.store offset=24 align=4
              local.get 0
              local.get 7
              i64.load offset=40
              i64.store offset=32 align=4
              local.get 0
              i32.load offset=36
              local.tee 3
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=32
              local.set 8
              local.get 0
              i32.load offset=12
              local.set 6
              local.get 0
              i32.load offset=4
              local.set 4
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
              local.get 4
              local.get 8
              local.get 3
              call_indirect (type 1)
              i32.const 4
              global.get 1
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              drop
              local.set 3
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 3
            i32.const 24
            i32.shr_u
            local.tee 6
            i32.const 1
            local.get 6
            select
            local.set 9
            i32.const 0
            local.set 4
            i32.const 0
            local.set 8
            i32.const 0
            local.set 13
            i32.const 0
            local.set 11
            local.get 0
            local.get 3
            call $runtime.hashmapBucketAddrForHash
            local.set 3
          end
          loop  ;; label = @4
            block  ;; label = @5
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 3
                local.tee 6
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
                    local.tee 4
                    br_if 1 (;@7;)
                    local.get 0
                    i32.load offset=12
                    local.tee 4
                    local.get 3
                    i32.mul
                    local.get 6
                    i32.add
                    i32.const 12
                    i32.add
                    local.set 10
                    local.get 3
                    local.get 6
                    i32.add
                    local.tee 18
                    i32.load8_u
                    local.tee 16
                    local.get 9
                    i32.ne
                    local.set 14
                    local.get 0
                    i32.load offset=16
                    local.get 3
                    i32.mul
                    local.get 4
                    i32.const 3
                    i32.shl
                    i32.add
                    local.get 6
                    i32.add
                    i32.const 12
                    i32.add
                    local.set 12
                  end
                  block  ;; label = @8
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 14
                      br_if 1 (;@8;)
                      local.get 0
                      i32.load offset=28
                      local.tee 14
                      i32.eqz
                      br_if 6 (;@3;)
                      local.get 0
                      i32.load offset=24
                      local.set 17
                    end
                    local.get 15
                    i32.const 5
                    i32.eq
                    i32.const 1
                    global.get 1
                    select
                    if  ;; label = @9
                      local.get 1
                      local.get 10
                      local.get 4
                      local.get 17
                      local.get 14
                      call_indirect (type 1)
                      i32.const 5
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 8 (;@1;)
                      drop
                      local.set 4
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 4
                      i32.const 1
                      i32.and
                      i32.eqz
                      local.tee 4
                      br_if 1 (;@8;)
                      local.get 12
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
                    local.get 11
                    local.get 18
                    local.get 8
                    local.get 16
                    i32.or
                    local.tee 4
                    select
                    local.set 11
                    local.get 8
                    local.get 10
                    local.get 4
                    select
                    local.set 8
                    local.get 13
                    local.get 12
                    local.get 4
                    select
                    local.set 13
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
                local.get 6
                i32.load offset=8
                local.set 3
                local.get 6
                local.set 4
                br 2 (;@4;)
              end
            end
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            local.get 8
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
              local.set 3
              local.get 0
              local.get 0
              i32.load offset=8
              i32.const 1
              i32.add
              i32.store offset=8
              local.get 3
              i32.const 12
              i32.add
              local.get 1
              local.get 0
              i32.load offset=12
              local.tee 1
              call $memcpy
              local.get 1
              i32.const 3
              i32.shl
              i32.add
              local.get 2
              local.get 0
              i32.load offset=16
              call $memcpy
              drop
              local.get 3
              local.get 9
              i32.store8
              local.get 4
              i32.eqz
              br_if 2 (;@3;)
              local.get 4
              local.get 3
              i32.store offset=8
              br 3 (;@2;)
            end
            local.get 0
            local.get 0
            i32.load offset=8
            i32.const 1
            i32.add
            i32.store offset=8
            local.get 8
            local.get 1
            local.get 0
            i32.load offset=12
            call $memcpy
            drop
            local.get 13
            local.get 2
            local.get 0
            i32.load offset=16
            call $memcpy
            drop
            local.get 11
            i32.eqz
            br_if 1 (;@3;)
            local.get 11
            local.get 9
            i32.store8
            br 2 (;@2;)
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          unreachable
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 7
        i32.const 48
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
  (func $_*runtime.channelBlockedList_.detach (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      local.tee 9
      i32.eqz
      br_if 0 (;@1;)
      i32.const -1
      local.set 2
      local.get 0
      i32.const 16
      i32.add
      i32.load
      local.tee 1
      i32.const 0
      local.get 1
      i32.const 0
      i32.gt_s
      select
      i32.const 1
      i32.sub
      local.set 10
      local.get 1
      i32.const 1
      i32.sub
      local.set 11
      loop  ;; label = @2
        local.get 2
        local.get 10
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 11
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            local.get 0
            i32.load offset=16
            i32.ge_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=12
            local.tee 6
            local.get 2
            i32.const 24
            i32.mul
            local.tee 1
            i32.add
            local.tee 3
            local.get 0
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            local.get 9
            i32.add
            local.tee 1
            i32.load offset=4
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            i32.load offset=8
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load
            local.tee 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            i32.load offset=12
            local.tee 5
            local.set 1
            block  ;; label = @5
              local.get 3
              local.get 5
              i32.eq
              if  ;; label = @6
                local.get 6
                i32.eqz
                br_if 2 (;@4;)
                local.get 3
                i32.load
                local.set 5
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 1
                local.tee 8
                i32.eqz
                br_if 1 (;@5;)
                local.get 8
                i32.load
                local.tee 1
                local.get 3
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              local.get 3
              i32.load
              i32.store
            end
            local.get 7
            local.get 5
            i32.store offset=12
            local.get 4
            i32.load
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=12
            br_if 2 (;@2;)
            local.get 4
            i32.load offset=4
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.load8_u offset=8
              i32.const 4
              i32.eq
              br_if 3 (;@2;)
              br 2 (;@3;)
            end
            local.get 1
            i32.load offset=24
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.const 3
            i32.store8 offset=8
            br 2 (;@2;)
          end
          unreachable
        end
        local.get 1
        i32.const 0
        i32.store8 offset=8
        br 0 (;@2;)
      end
      unreachable
    end)
  (func $_*runtime.channel_.pop (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=24
    local.tee 2
    if  ;; label = @1
      local.get 1
      local.get 0
      i32.load offset=28
      local.get 0
      i32.load
      local.tee 1
      local.get 0
      i32.load offset=20
      i32.mul
      i32.add
      local.tee 3
      local.get 1
      call $memcpy
      drop
      local.get 3
      local.get 0
      i32.load
      call $memset
      drop
      local.get 0
      local.get 0
      i32.load offset=24
      i32.const 1
      i32.sub
      i32.store offset=24
      local.get 0
      local.get 0
      i32.load offset=20
      i32.const 1
      i32.add
      local.tee 1
      i32.const 0
      local.get 1
      local.get 0
      i32.load offset=4
      i32.ne
      select
      i32.store offset=20
    end
    local.get 2
    i32.const 0
    i32.ne)
  (func $_*runtime.channel_.push (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      local.get 3
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=28
      local.get 0
      i32.load
      local.tee 2
      local.get 0
      i32.load offset=16
      i32.mul
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      i32.const 1
      local.set 2
      local.get 0
      local.get 0
      i32.load offset=24
      i32.const 1
      i32.add
      i32.store offset=24
      local.get 0
      local.get 0
      i32.load offset=16
      i32.const 1
      i32.add
      local.tee 1
      i32.const 0
      local.get 1
      local.get 0
      i32.load offset=4
      i32.ne
      select
      i32.store offset=16
    end
    local.get 2)
  (func $_*runtime.channel_.resumeTX (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.load
      i32.store offset=12
      local.get 1
      i32.load offset=4
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        local.tee 2
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load offset=4
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.load offset=4
        local.set 3
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 1
        call $_*runtime.channelBlockedList_.detach
        local.get 1
        i32.load offset=4
        local.set 0
      end
      local.get 0
      call $_*internal/task.Queue_.Push
      local.get 3
      return
    end
    unreachable)
  (func $runtime.chanRecv (type 8) (param i32 i32 i32)
    (local i32 i32 i32)
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
      local.tee 3
      i32.load
      local.set 0
      local.get 3
      i32.load offset=4
      local.set 1
      local.get 3
      i32.load offset=8
      local.set 2
      local.get 3
      i32.load offset=12
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
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 0
          i32.eqz
          global.get 1
          select
          local.tee 3
          global.get 1
          i32.or
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load8_u offset=8
                  br_table 2 (;@5;) 2 (;@5;) 0 (;@7;) 0 (;@7;) 1 (;@6;) 5 (;@2;)
                end
                local.get 0
                local.get 1
                call $_*runtime.channel_.pop
                local.get 0
                i32.load offset=12
                local.set 3
                i32.const 1
                i32.and
                if  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 0
                    call $_*runtime.channel_.resumeTX
                    call $_*runtime.channel_.push
                    drop
                    local.get 0
                    i32.load offset=12
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 3
                    i32.store8 offset=8
                  end
                  i32.const 1
                  local.set 3
                  local.get 0
                  i32.load offset=24
                  br_if 2 (;@5;)
                  local.get 0
                  i32.const 0
                  i32.store8 offset=8
                  br 2 (;@5;)
                end
                local.get 3
                i32.eqz
                if  ;; label = @7
                  i32.const 0
                  local.set 3
                  br 2 (;@5;)
                end
                local.get 1
                local.get 0
                call $_*runtime.channel_.resumeTX
                local.get 0
                i32.load
                call $memcpy
                drop
                i32.const 1
                local.set 3
                local.get 0
                i32.load offset=12
                br_if 1 (;@5;)
                local.get 0
                i32.const 0
                i32.store8 offset=8
                br 1 (;@5;)
              end
              i32.const 1
              local.set 3
              local.get 0
              local.get 1
              call $_*runtime.channel_.pop
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 1
              local.get 0
              i32.load
              call $memset
              drop
            end
            local.get 3
            i32.const 1
            i32.and
            i32.eqz
            local.tee 3
            br_if 1 (;@3;)
            return
          end
          local.get 4
          i32.const 0
          global.get 1
          select
          i32.eqz
          if  ;; label = @4
            call $runtime.deadlock
            i32.const 0
            global.get 1
            i32.const 1
            i32.eq
            br_if 3 (;@1;)
            drop
          end
          global.get 1
          i32.eqz
          if  ;; label = @4
            unreachable
          end
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 1
          i32.store8 offset=8
          i32.const 65588
          i32.load
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i64.const 1
          i64.store offset=8
          local.get 3
          local.get 1
          i32.store offset=4
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=12
          local.set 1
          local.get 2
          i32.const 16
          i32.add
          i64.const 0
          i64.store align=4
          local.get 2
          i64.const 0
          i64.store offset=8 align=4
          local.get 2
          local.get 3
          i32.store offset=4
          local.get 2
          local.get 1
          i32.store
          local.get 0
          local.get 2
          i32.store offset=12
        end
        local.get 4
        i32.const 1
        i32.eq
        i32.const 1
        global.get 1
        select
        if  ;; label = @3
          call $internal/task.Pause
          i32.const 1
          global.get 1
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          drop
        end
        global.get 1
        i32.eqz
        if  ;; label = @3
          local.get 3
          i64.const 0
          i64.store offset=8
          local.get 3
          i32.const 0
          i32.store offset=4
          return
        end
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      return
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
    global.get 2
    global.get 2
    i32.load
    i32.const 16
    i32.add
    i32.store)
  (func $main.sum$gowrapper (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=8
      local.set 9
      local.get 1
      i32.load offset=4
      local.set 7
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
        local.set 10
      end
      global.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.load
        local.set 7
        local.get 0
        i32.load offset=4
        local.set 9
        local.get 0
        i32.load offset=12
        local.set 0
      end
      local.get 10
      i32.const 0
      global.get 1
      select
      i32.eqz
      if  ;; label = @2
        local.get 7
        local.set 3
        local.get 9
        local.set 1
        local.get 0
        local.set 4
        global.get 1
        i32.const 2
        i32.eq
        if  ;; label = @3
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
          local.set 1
          local.get 2
          i32.load offset=4
          local.set 4
          local.get 2
          i32.load offset=8
          local.set 2
        end
        block  ;; label = @3
          block (result i32)  ;; label = @4
            global.get 1
            i32.const 2
            i32.eq
            if  ;; label = @5
              global.get 2
              global.get 2
              i32.load
              i32.const 4
              i32.sub
              i32.store
              global.get 2
              i32.load
              i32.load
              local.set 8
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              global.get $__stack_pointer
              i32.const 32
              i32.sub
              local.tee 2
              global.set $__stack_pointer
              local.get 1
              i32.const 0
              local.get 1
              i32.const 0
              i32.gt_s
              select
              local.set 5
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    global.get 1
                    if (result i32)  ;; label = @9
                      local.get 3
                    else
                      loop  ;; label = @10
                        local.get 5
                        if  ;; label = @11
                          local.get 1
                          i32.eqz
                          br_if 4 (;@7;)
                          local.get 5
                          i32.const 1
                          i32.sub
                          local.set 5
                          local.get 1
                          i32.const 1
                          i32.sub
                          local.set 1
                          local.get 6
                          local.get 3
                          i32.load
                          i32.add
                          local.set 6
                          local.get 3
                          i32.const 4
                          i32.add
                          local.set 3
                          br 1 (;@10;)
                        end
                      end
                      local.get 2
                      local.get 6
                      i32.store offset=4
                      local.get 4
                      i32.eqz
                    end
                    global.get 1
                    i32.or
                    i32.eqz
                    if  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 4
                          i32.load8_u offset=8
                          br_table 0 (;@11;) 1 (;@10;) 3 (;@8;) 0 (;@11;) 4 (;@7;)
                        end
                        i32.const 3
                        local.set 1
                        local.get 4
                        local.get 2
                        i32.const 4
                        i32.add
                        call $_*runtime.channel_.push
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 2 (;@8;)
                        br 4 (;@6;)
                      end
                      local.get 4
                      i32.load offset=12
                      local.tee 1
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 4
                      local.get 1
                      i32.load
                      i32.store offset=12
                      local.get 1
                      i32.load offset=4
                      local.tee 3
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=4
                      local.get 1
                      i32.load offset=8
                      local.tee 6
                      if (result i32)  ;; label = @10
                        local.get 3
                        local.get 6
                        i32.store offset=4
                        local.get 1
                        call $_*runtime.channelBlockedList_.detach
                        local.get 1
                        i32.load offset=4
                      else
                        local.get 3
                      end
                      call $_*internal/task.Queue_.Push
                      local.get 2
                      i32.const 4
                      i32.add
                      local.get 4
                      i32.load
                      call $memcpy
                      drop
                      local.get 4
                      i32.load offset=12
                      br_if 4 (;@5;)
                      i32.const 0
                      local.set 1
                      br 3 (;@6;)
                    end
                    local.get 8
                    i32.const 0
                    global.get 1
                    select
                    i32.eqz
                    if  ;; label = @9
                      call $runtime.deadlock
                      i32.const 0
                      global.get 1
                      i32.const 1
                      i32.eq
                      br_if 5 (;@4;)
                      drop
                    end
                    global.get 1
                    i32.eqz
                    if  ;; label = @9
                      unreachable
                    end
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 4
                    i32.const 2
                    i32.store8 offset=8
                    i32.const 65588
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 1
                    local.get 2
                    i32.const 4
                    i32.add
                    i32.store offset=4
                    local.get 2
                    i32.const 24
                    i32.add
                    i64.const 0
                    i64.store
                    local.get 2
                    i64.const 0
                    i64.store offset=16
                    local.get 2
                    local.get 1
                    i32.store offset=12
                    local.get 2
                    local.get 4
                    i32.load offset=12
                    i32.store offset=8
                    local.get 4
                    local.get 2
                    i32.const 8
                    i32.add
                    i32.store offset=12
                  end
                  local.get 8
                  i32.const 1
                  i32.eq
                  i32.const 1
                  global.get 1
                  select
                  if  ;; label = @8
                    call $internal/task.Pause
                    i32.const 1
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 4 (;@4;)
                    drop
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    i32.const 0
                    i32.store offset=4
                    br 3 (;@5;)
                  end
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  unreachable
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 4
                local.get 1
                i32.store8 offset=8
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 2
              i32.const 32
              i32.add
              global.set $__stack_pointer
            end
            br 1 (;@3;)
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
          local.get 1
          i32.store
          local.get 3
          local.get 4
          i32.store offset=4
          local.get 3
          local.get 2
          i32.store offset=8
          global.get 2
          global.get 2
          i32.load
          i32.const 12
          i32.add
          i32.store
        end
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      local.get 10
      i32.const 1
      i32.eq
      i32.const 1
      global.get 1
      select
      if  ;; label = @2
        call $runtime.deadlock
        i32.const 1
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
    local.get 7
    i32.store offset=4
    local.get 1
    local.get 9
    i32.store offset=8
    global.get 2
    global.get 2
    i32.load
    i32.const 12
    i32.add
    i32.store)
  (func $malloc.command_export (type 4) (param i32) (result i32)
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
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
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
  (func $free.command_export (type 0) (param i32)
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
  (func $calloc.command_export (type 2) (param i32 i32) (result i32)
    (local i32 i32)
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
        block (result i32)  ;; label = @3
          local.get 0
          local.set 2
          block (result i32)  ;; label = @4
            global.get 1
            i32.const 2
            i32.eq
            if  ;; label = @5
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
            local.get 2
            local.get 1
            local.get 2
            i32.mul
            global.get 1
            select
            local.set 2
            global.get 1
            i32.const 2
            i32.eq
            if (result i32)  ;; label = @5
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
            if (result i32)  ;; label = @5
              local.get 2
            else
              local.get 2
              call $malloc
              i32.const 0
              global.get 1
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              drop
            end
            global.get 1
            i32.eqz
            br_if 1 (;@3;)
            drop
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
          local.get 2
          i32.store
          global.get 2
          global.get 2
          i32.load
          i32.const 4
          i32.add
          i32.store
          i32.const 0
        end
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
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
    global.get 2
    global.get 2
    i32.load
    i32.const 8
    i32.add
    i32.store
    i32.const 0)
  (func $realloc.command_export (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
        block (result i32)  ;; label = @3
          local.get 0
          local.set 11
          local.get 1
          local.set 12
          global.get 1
          i32.const 2
          i32.eq
          if  ;; label = @4
            global.get 2
            global.get 2
            i32.load
            i32.const 20
            i32.sub
            i32.store
            global.get 2
            i32.load
            local.tee 2
            i32.load
            local.set 11
            local.get 2
            i32.load offset=8
            local.set 7
            local.get 2
            i32.load offset=12
            local.set 9
            local.get 2
            i32.load offset=4
            local.set 12
            local.get 2
            i32.load offset=16
            local.set 6
          end
          block (result i32)  ;; label = @4
            global.get 1
            i32.const 2
            i32.eq
            if  ;; label = @5
              global.get 2
              global.get 2
              i32.load
              i32.const 4
              i32.sub
              i32.store
              global.get 2
              i32.load
              i32.load
              local.set 13
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              global.get $__stack_pointer
              i32.const 16
              i32.sub
              local.tee 7
              global.set $__stack_pointer
            end
            block  ;; label = @5
              block  ;; label = @6
                global.get 1
                i32.const 1
                local.get 12
                select
                if  ;; label = @7
                  local.get 13
                  i32.const 0
                  global.get 1
                  select
                  i32.eqz
                  if  ;; label = @8
                    local.get 11
                    call $free
                    i32.const 0
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 4 (;@4;)
                    drop
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    i32.const 0
                    local.set 6
                    br 2 (;@6;)
                  end
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 12
                  i32.const 0
                  i32.lt_s
                  br_if 2 (;@5;)
                  local.get 11
                  i32.eqz
                  local.set 9
                  local.get 12
                  call $runtime.alloc
                  local.set 6
                end
                block  ;; label = @7
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 9
                    br_if 1 (;@7;)
                    local.get 7
                    local.get 11
                    i32.store offset=12
                    local.get 7
                    i32.const 12
                    i32.add
                    local.set 9
                  end
                  local.get 13
                  i32.const 1
                  i32.eq
                  i32.const 1
                  global.get 1
                  select
                  if  ;; label = @8
                    local.get 9
                    local.get 7
                    call $runtime.hashmapBinaryGet
                    i32.const 1
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 4 (;@4;)
                    drop
                    local.set 9
                  end
                  global.get 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 9
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 3 (;@5;)
                    local.get 7
                    i32.load offset=4
                    local.tee 9
                    local.get 12
                    local.get 9
                    local.get 12
                    i32.lt_u
                    select
                    local.set 2
                    block  ;; label = @9
                      local.get 6
                      local.get 7
                      i32.load
                      local.tee 3
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 3
                      local.get 2
                      local.get 6
                      i32.add
                      local.tee 5
                      i32.sub
                      i32.const 0
                      local.get 2
                      i32.const 1
                      i32.shl
                      i32.sub
                      i32.le_u
                      if  ;; label = @10
                        local.get 6
                        local.get 3
                        local.get 2
                        call $memcpy
                        drop
                        br 1 (;@9;)
                      end
                      local.get 3
                      local.get 6
                      i32.xor
                      i32.const 3
                      i32.and
                      local.set 4
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          local.get 6
                          i32.gt_u
                          if  ;; label = @12
                            local.get 4
                            if  ;; label = @13
                              local.get 2
                              local.set 5
                              local.get 6
                              local.set 4
                              br 3 (;@10;)
                            end
                            local.get 6
                            i32.const 3
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              local.get 2
                              local.set 5
                              local.get 6
                              local.set 4
                              br 2 (;@11;)
                            end
                            local.get 2
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 6
                            local.get 3
                            i32.load8_u
                            i32.store8
                            local.get 2
                            i32.const 1
                            i32.sub
                            local.set 5
                            local.get 6
                            i32.const 1
                            i32.add
                            local.tee 4
                            i32.const 3
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              local.get 3
                              i32.const 1
                              i32.add
                              local.set 3
                              br 2 (;@11;)
                            end
                            local.get 5
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 6
                            local.get 3
                            i32.load8_u offset=1
                            i32.store8 offset=1
                            local.get 2
                            i32.const 2
                            i32.sub
                            local.set 5
                            local.get 6
                            i32.const 2
                            i32.add
                            local.tee 4
                            i32.const 3
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              local.get 3
                              i32.const 2
                              i32.add
                              local.set 3
                              br 2 (;@11;)
                            end
                            local.get 5
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 6
                            local.get 3
                            i32.load8_u offset=2
                            i32.store8 offset=2
                            local.get 2
                            i32.const 3
                            i32.sub
                            local.set 5
                            local.get 6
                            i32.const 3
                            i32.add
                            local.tee 4
                            i32.const 3
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              local.get 3
                              i32.const 3
                              i32.add
                              local.set 3
                              br 2 (;@11;)
                            end
                            local.get 5
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 6
                            local.get 3
                            i32.load8_u offset=3
                            i32.store8 offset=3
                            local.get 6
                            i32.const 4
                            i32.add
                            local.set 4
                            local.get 3
                            i32.const 4
                            i32.add
                            local.set 3
                            local.get 2
                            i32.const 4
                            i32.sub
                            local.set 5
                            br 1 (;@11;)
                          end
                          block  ;; label = @12
                            local.get 4
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              local.get 5
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 2
                              i32.eqz
                              br_if 4 (;@9;)
                              local.get 6
                              local.get 2
                              i32.const 1
                              i32.sub
                              local.tee 5
                              i32.add
                              local.tee 4
                              local.get 3
                              local.get 5
                              i32.add
                              i32.load8_u
                              i32.store8
                              local.get 4
                              i32.const 3
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                local.get 5
                                local.set 2
                                br 1 (;@13;)
                              end
                              local.get 5
                              i32.eqz
                              br_if 4 (;@9;)
                              local.get 6
                              local.get 2
                              i32.const 2
                              i32.sub
                              local.tee 5
                              i32.add
                              local.tee 4
                              local.get 3
                              local.get 5
                              i32.add
                              i32.load8_u
                              i32.store8
                              local.get 4
                              i32.const 3
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                local.get 5
                                local.set 2
                                br 1 (;@13;)
                              end
                              local.get 5
                              i32.eqz
                              br_if 4 (;@9;)
                              local.get 6
                              local.get 2
                              i32.const 3
                              i32.sub
                              local.tee 5
                              i32.add
                              local.tee 4
                              local.get 3
                              local.get 5
                              i32.add
                              i32.load8_u
                              i32.store8
                              local.get 4
                              i32.const 3
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                local.get 5
                                local.set 2
                                br 1 (;@13;)
                              end
                              local.get 5
                              i32.eqz
                              br_if 4 (;@9;)
                              local.get 6
                              local.get 2
                              i32.const 4
                              i32.sub
                              local.tee 2
                              i32.add
                              local.get 2
                              local.get 3
                              i32.add
                              i32.load8_u
                              i32.store8
                            end
                            local.get 2
                            i32.const 4
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 2
                            i32.const 4
                            i32.sub
                            local.tee 10
                            i32.const 2
                            i32.shr_u
                            i32.const 1
                            i32.add
                            i32.const 3
                            i32.and
                            local.tee 4
                            if  ;; label = @13
                              local.get 3
                              i32.const 4
                              i32.sub
                              local.set 8
                              local.get 6
                              i32.const 4
                              i32.sub
                              local.set 5
                              loop  ;; label = @14
                                local.get 2
                                local.get 5
                                i32.add
                                local.get 2
                                local.get 8
                                i32.add
                                i32.load
                                i32.store
                                local.get 2
                                i32.const 4
                                i32.sub
                                local.set 2
                                local.get 4
                                i32.const 1
                                i32.sub
                                local.tee 4
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 10
                            i32.const 12
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 3
                            i32.const 16
                            i32.sub
                            local.set 4
                            local.get 6
                            i32.const 16
                            i32.sub
                            local.set 5
                            loop  ;; label = @13
                              local.get 2
                              local.get 5
                              i32.add
                              local.tee 10
                              i32.const 12
                              i32.add
                              local.get 2
                              local.get 4
                              i32.add
                              local.tee 8
                              i32.const 12
                              i32.add
                              i32.load
                              i32.store
                              local.get 10
                              i32.const 8
                              i32.add
                              local.get 8
                              i32.const 8
                              i32.add
                              i32.load
                              i32.store
                              local.get 10
                              i32.const 4
                              i32.add
                              local.get 8
                              i32.const 4
                              i32.add
                              i32.load
                              i32.store
                              local.get 10
                              local.get 8
                              i32.load
                              i32.store
                              local.get 2
                              i32.const 16
                              i32.sub
                              local.tee 2
                              i32.const 3
                              i32.gt_u
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 2
                          i32.eqz
                          br_if 2 (;@9;)
                          local.get 2
                          i32.const 1
                          i32.sub
                          local.get 2
                          i32.const 3
                          i32.and
                          local.tee 4
                          if  ;; label = @12
                            local.get 3
                            i32.const 1
                            i32.sub
                            local.set 8
                            local.get 6
                            i32.const 1
                            i32.sub
                            local.set 5
                            loop  ;; label = @13
                              local.get 2
                              local.get 5
                              i32.add
                              local.get 2
                              local.get 8
                              i32.add
                              i32.load8_u
                              i32.store8
                              local.get 2
                              i32.const 1
                              i32.sub
                              local.set 2
                              local.get 4
                              i32.const 1
                              i32.sub
                              local.tee 4
                              br_if 0 (;@13;)
                            end
                          end
                          i32.const 3
                          i32.lt_u
                          br_if 2 (;@9;)
                          local.get 3
                          i32.const 4
                          i32.sub
                          local.set 4
                          local.get 6
                          i32.const 4
                          i32.sub
                          local.set 5
                          loop  ;; label = @12
                            local.get 2
                            local.get 5
                            i32.add
                            local.tee 10
                            i32.const 3
                            i32.add
                            local.get 2
                            local.get 4
                            i32.add
                            local.tee 8
                            i32.const 3
                            i32.add
                            i32.load8_u
                            i32.store8
                            local.get 10
                            i32.const 2
                            i32.add
                            local.get 8
                            i32.const 2
                            i32.add
                            i32.load8_u
                            i32.store8
                            local.get 10
                            i32.const 1
                            i32.add
                            local.get 8
                            i32.const 1
                            i32.add
                            i32.load8_u
                            i32.store8
                            local.get 10
                            local.get 8
                            i32.load8_u
                            i32.store8
                            local.get 2
                            i32.const 4
                            i32.sub
                            local.tee 2
                            br_if 0 (;@12;)
                          end
                          br 2 (;@9;)
                        end
                        local.get 5
                        i32.const 4
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const 4
                        i32.sub
                        local.tee 8
                        i32.const 2
                        i32.shr_u
                        i32.const 1
                        i32.add
                        i32.const 7
                        i32.and
                        local.tee 2
                        if  ;; label = @11
                          loop  ;; label = @12
                            local.get 4
                            local.get 3
                            i32.load
                            i32.store
                            local.get 3
                            i32.const 4
                            i32.add
                            local.set 3
                            local.get 4
                            i32.const 4
                            i32.add
                            local.set 4
                            local.get 5
                            i32.const 4
                            i32.sub
                            local.set 5
                            local.get 2
                            i32.const 1
                            i32.sub
                            local.tee 2
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 8
                        i32.const 28
                        i32.lt_u
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          local.get 4
                          local.get 3
                          i32.load
                          i32.store
                          local.get 4
                          local.get 3
                          i32.load offset=4
                          i32.store offset=4
                          local.get 4
                          local.get 3
                          i32.load offset=8
                          i32.store offset=8
                          local.get 4
                          local.get 3
                          i32.load offset=12
                          i32.store offset=12
                          local.get 4
                          local.get 3
                          i32.load offset=16
                          i32.store offset=16
                          local.get 4
                          local.get 3
                          i32.load offset=20
                          i32.store offset=20
                          local.get 4
                          local.get 3
                          i32.load offset=24
                          i32.store offset=24
                          local.get 4
                          local.get 3
                          i32.load offset=28
                          i32.store offset=28
                          local.get 3
                          i32.const 32
                          i32.add
                          local.set 3
                          local.get 4
                          i32.const 32
                          i32.add
                          local.set 4
                          local.get 5
                          i32.const 32
                          i32.sub
                          local.tee 5
                          i32.const 3
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 5
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 1
                      i32.sub
                      local.get 5
                      i32.const 7
                      i32.and
                      local.tee 2
                      if  ;; label = @10
                        loop  ;; label = @11
                          local.get 4
                          local.get 3
                          i32.load8_u
                          i32.store8
                          local.get 5
                          i32.const 1
                          i32.sub
                          local.set 5
                          local.get 4
                          i32.const 1
                          i32.add
                          local.set 4
                          local.get 3
                          i32.const 1
                          i32.add
                          local.set 3
                          local.get 2
                          i32.const 1
                          i32.sub
                          local.tee 2
                          br_if 0 (;@11;)
                        end
                      end
                      i32.const 7
                      i32.lt_u
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 4
                        local.get 3
                        i32.load8_u
                        i32.store8
                        local.get 4
                        local.get 3
                        i32.load8_u offset=1
                        i32.store8 offset=1
                        local.get 4
                        local.get 3
                        i32.load8_u offset=2
                        i32.store8 offset=2
                        local.get 4
                        local.get 3
                        i32.load8_u offset=3
                        i32.store8 offset=3
                        local.get 4
                        local.get 3
                        i32.load8_u offset=4
                        i32.store8 offset=4
                        local.get 4
                        local.get 3
                        i32.load8_u offset=5
                        i32.store8 offset=5
                        local.get 4
                        local.get 3
                        i32.load8_u offset=6
                        i32.store8 offset=6
                        local.get 4
                        local.get 3
                        i32.load8_u offset=7
                        i32.store8 offset=7
                        local.get 4
                        i32.const 8
                        i32.add
                        local.set 4
                        local.get 3
                        i32.const 8
                        i32.add
                        local.set 3
                        local.get 5
                        i32.const 8
                        i32.sub
                        local.tee 5
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 7
                    local.get 11
                    i32.store
                  end
                  local.get 13
                  i32.const 2
                  i32.eq
                  i32.const 1
                  global.get 1
                  select
                  if  ;; label = @8
                    local.get 7
                    call $runtime.hashmapBinaryDelete
                    i32.const 2
                    global.get 1
                    i32.const 1
                    i32.eq
                    br_if 4 (;@4;)
                    drop
                  end
                end
                global.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 7
                  local.get 12
                  i32.store offset=8
                  local.get 7
                  local.get 12
                  i32.store offset=4
                  local.get 7
                  local.get 6
                  i32.store
                  local.get 7
                  local.get 6
                  i32.store offset=12
                  local.get 7
                  i32.const 12
                  i32.add
                  local.set 11
                end
                local.get 13
                i32.const 3
                i32.eq
                i32.const 1
                global.get 1
                select
                if  ;; label = @7
                  local.get 11
                  local.get 7
                  call $runtime.hashmapBinarySet
                  i32.const 3
                  global.get 1
                  i32.const 1
                  i32.eq
                  br_if 3 (;@4;)
                  drop
                end
              end
              global.get 1
              i32.eqz
              if  ;; label = @6
                local.get 7
                i32.const 16
                i32.add
                global.set $__stack_pointer
                local.get 6
                br 3 (;@3;)
              end
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              unreachable
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
          local.get 11
          i32.store
          local.get 2
          local.get 12
          i32.store offset=4
          local.get 2
          local.get 7
          i32.store offset=8
          local.get 2
          local.get 9
          i32.store offset=12
          local.get 2
          local.get 6
          i32.store offset=16
          global.get 2
          global.get 2
          i32.load
          i32.const 20
          i32.add
          i32.store
          i32.const 0
        end
        i32.const 0
        global.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        drop
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
    global.get 2
    global.get 2
    i32.load
    i32.const 8
    i32.add
    i32.store
    i32.const 0)
  (func $_start.command_export (type 3)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      memory.size
      local.set 0
      i32.const 65540
      i32.const 65920
      i32.store
      i32.const 65592
      local.get 0
      i32.const 16
      i32.shl
      i32.store
      i32.const 1
      i32.const 0
      call $internal/task.start
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 65624
            i32.load8_u
            i32.eqz
            if  ;; label = @5
              i32.const 65596
              i32.load
              local.tee 0
              i32.eqz
              br_if 2 (;@3;)
              i32.const 65596
              local.get 0
              i32.load
              i32.store
              local.get 0
              i32.const 65600
              i32.load
              i32.eq
              if  ;; label = @6
                i32.const 65600
                i32.const 0
                i32.store
              end
              local.get 0
              i32.const 0
              i32.store
              i32.const 65588
              i32.load
              local.set 3
              i32.const 65588
              local.get 0
              i32.store
              local.get 0
              i32.const 16
              i32.add
              local.set 1
              local.get 0
              i32.const 32
              i32.add
              i32.load8_u
              if  ;; label = @6
                global.get $__stack_pointer
                local.get 1
                i32.load offset=12
                global.set $__stack_pointer
                local.get 1
                i32.load offset=4
                local.get 1
                i32.load
                i32.const 65584
                i32.const 1
                i32.store8
                local.get 1
                i32.const 8
                i32.add
                call $asyncify_start_rewind
                call_indirect (type 0)
                call $asyncify_stop_unwind
                global.set $__stack_pointer
                br 2 (;@4;)
              end
              global.get $__stack_pointer
              local.get 1
              i32.load offset=12
              global.set $__stack_pointer
              local.get 1
              i32.load offset=4
              local.get 1
              i32.load
              call_indirect (type 0)
              call $asyncify_stop_unwind
              global.set $__stack_pointer
              local.get 0
              i32.const 1
              i32.store8 offset=32
              br 1 (;@4;)
            end
            br 3 (;@1;)
          end
          i32.const 65588
          local.get 3
          i32.store
          local.get 0
          i32.const 24
          i32.add
          i32.load
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.le_u
          br_if 1 (;@2;)
        end
      end
      unreachable
    end)
  (func $zkmain.command_export (type 3)
    (local i32 i32 i32 i32 i32)
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
        global.get 1
        i32.const 2
        i32.eq
        if  ;; label = @3
          global.get 2
          global.get 2
          i32.load
          i32.const 16
          i32.sub
          i32.store
          global.get 2
          i32.load
          local.tee 1
          i32.load
          local.set 2
          local.get 1
          i32.load offset=4
          local.set 0
          local.get 1
          i32.load offset=8
          local.set 3
          local.get 1
          i32.load offset=12
          local.set 1
        end
        block  ;; label = @3
          block (result i32)  ;; label = @4
            global.get 1
            i32.const 2
            i32.eq
            if  ;; label = @5
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
            if  ;; label = @5
              global.get $__stack_pointer
              i32.const 32
              i32.sub
              local.tee 3
              global.set $__stack_pointer
              i32.const 24
              call $runtime.alloc
              local.tee 2
              i64.const 4
              i64.store offset=16 align=4
              local.get 2
              i64.const -38654705656
              i64.store offset=8 align=4
              local.get 2
              i64.const 8589934599
              i64.store align=4
              i32.const 32
              call $runtime.alloc
              local.tee 1
              i32.const 0
              call $runtime.alloc
              i32.store offset=28
              local.get 1
              i64.const 4
              i64.store align=4
              i32.const 16
              call $runtime.alloc
              local.tee 0
              local.get 1
              i32.store offset=12
              local.get 0
              i64.const 25769803779
              i64.store offset=4 align=4
              local.get 0
              local.get 2
              i32.store
              i32.const 2
              local.get 0
              call $internal/task.start
              i32.const 16
              call $runtime.alloc
              local.tee 0
              local.get 1
              i32.store offset=12
              local.get 0
              i64.const 12884901891
              i64.store offset=4 align=4
              local.get 0
              local.get 2
              i32.const 12
              i32.add
              i32.store
              i32.const 2
              local.get 0
              call $internal/task.start
              local.get 3
              i32.const 8
              i32.add
              local.set 0
              local.get 3
              i32.const 4
              i32.add
              local.set 2
            end
            local.get 4
            i32.const 0
            global.get 1
            select
            i32.eqz
            if  ;; label = @5
              local.get 1
              local.get 2
              local.get 0
              call $runtime.chanRecv
              i32.const 0
              global.get 1
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              drop
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 3
              i32.const 8
              i32.add
              local.set 0
              local.get 3
              i32.const 4
              i32.add
              local.set 2
            end
            local.get 4
            i32.const 1
            i32.eq
            i32.const 1
            global.get 1
            select
            if  ;; label = @5
              local.get 1
              local.get 2
              local.get 0
              call $runtime.chanRecv
              i32.const 1
              global.get 1
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              drop
            end
            global.get 1
            i32.eqz
            if  ;; label = @5
              local.get 3
              i32.const 32
              i32.add
              global.set $__stack_pointer
            end
            br 1 (;@3;)
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
          local.get 2
          i32.store
          local.get 4
          local.get 0
          i32.store offset=4
          local.get 4
          local.get 3
          i32.store offset=8
          local.get 4
          local.get 1
          i32.store offset=12
          global.get 2
          global.get 2
          i32.load
          i32.const 16
          i32.add
          i32.store
        end
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
    i32.store)
  (func $asyncify_start_unwind (type 0) (param i32)
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
  (func $asyncify_stop_unwind (type 3)
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
  (func $asyncify_start_rewind (type 0) (param i32)
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
  (func $asyncify_get_state (type 9) (result i32)
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
  (export "zkmain" (func $zkmain.command_export))
  (export "asyncify_start_unwind" (func $asyncify_start_unwind))
  (export "asyncify_stop_unwind" (func $asyncify_stop_unwind))
  (export "asyncify_start_rewind" (func $asyncify_start_rewind))
  (export "asyncify_stop_rewind" (func $asyncify_stop_unwind))
  (export "asyncify_get_state" (func $asyncify_get_state))
  (elem (;0;) (i32.const 1) func $runtime.run$1$gowrapper $main.sum$gowrapper $runtime.memequal $runtime.hash32)
  (data $.data (i32.const 65536) "\c1\82\01\00\80\01\01\00\5c\00\01\00\c1\82\01\00\00\00\00\00\04\00\00\00\0c\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04"))