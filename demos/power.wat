(module
    (func $pow (export "pow") (param $base i32) (param $exp i32) (result i32)
        (local $res i32)
        (local $i i32)

        i32.const 1
        local.set $res

        block $fin
            loop $boucle
                local.get $i
                local.get $exp
                i32.ge_u
                br_if $fin

                local.get $res
                local.get $base
                i32.mul
                local.set $res

                local.get $i
                i32.const 1
                i32.add
                local.set $i

                br $boucle
            end
        end

        local.get $res
    )
)