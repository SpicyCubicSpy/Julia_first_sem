function AgainstTheWall!(robot, side)
    while !isborder(robot, side)
        move!(robot, side)
    end
end

function Perim!(robot)
    AgainstTheWall!(robot, Sud)
    AgainstTheWall!(robot, West)
    for side in (Nord, Ost, Sud, West)
        while !isborder(robot, side)
            move!(robot, side)
            putmarker!(robot)
        end
    end
end