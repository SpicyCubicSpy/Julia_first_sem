using HorizonSideRobots
robot = Robot(animate=true)

function againstthewall!(robot, side)
    while !isborder(robot, side)
        move!(robot, side)
    end
end

function obliquecross!(robot)
    againstthewall!(robot, Sud)
    againstthewall!(robot, West)
    while !isborder(robot, Nord)
        putmarker!(robot)
        move!(robot, Ost)
        move!(robot, Nord)
    end
    putmarker!(robot)
    againstthewall!(robot, West)
    while !isborder(robot, Sud)
        putmarker!(robot)
        move!(robot, Ost)
        move!(robot, Sud)
    end
    putmarker!(robot)
end
