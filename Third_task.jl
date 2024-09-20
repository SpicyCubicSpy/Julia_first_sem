using HorizonSideRobots
robot = Robot(animate=true)

function AgainstTheWall!(robot, side)
    while !isborder(robot, side)
        move!(robot, side)
    end
end

function againstthewallwithmarker!(robot, side)
    putmarker!(robot)
    while !isborder(robot, side)
        move!(robot, side)
        putmarker!(robot)
    end
end

function thewholefield!(robot)
    AgainstTheWall!(robot, Sud)
    AgainstTheWall!(robot, West)
    while !isborder(robot, Nord)
        againstthewallwithmarker!(robot, Ost)
        move!(robot, Nord)
        againstthewallwithmarker!(robot, West)
    end
end
