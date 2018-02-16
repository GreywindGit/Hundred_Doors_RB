def switch_state(doors, step_size)
    index = step_size - 1
    while index < doors.length
        doors[index] = !doors[index]
        index += step_size
    end
end


def check_open_doors(doors)
    result = []
    for i in 0..99
        if doors[i]
            result.push(i + 1)
        end
    end
    return result
end


if __FILE__ == $0
    doors = Array.new(100, false)
    for i in 1..100
        switch_state(doors, i)
    end
    print "The following doors are open: #{check_open_doors(doors)}"
end
