(module
    (func $fibo (export "fibo") (param $n i32) (result i64)
        (local $resm1 i64)
        (local $res i64)
        (local $i i32)
        (local $temp i64)

        ;; if (n == 0) return 0;
        local.get $n
        i32.eqz
        if
            i64.const 0
            return
        end

        ;; if (n == 1) return 1;
        local.get $n
        i32.const 1
        i32.eq
        if
            i64.const 1
            return
        end

        ;; let resm1: i64 = 0;
        i64.const 0
        local.set $resm1
        ;; let res: i64 = 1;
        i64.const 1
        local.set $res
        ;; let i: i32 = 1;
        i32.const 1
        local.set $i

        loop $loop
            ;; i < n
            local.get $i
            local.get $n
            i32.lt_s
            if
                ;; let resp1 = resm1 + res;
                local.get $resm1
                local.get $res
                i64.add
                local.set $temp

                ;; resm1 = res;
                local.get $res
                local.set $resm1

                ;; res = resp1;
                local.get $temp
                local.set $res

                ;; i++
                local.get $i
                i32.const 1
                i32.add
                local.set $i

                br $loop
            end
        end

        local.get $res
    )
)
