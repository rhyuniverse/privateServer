function spr(a, b, v)
    sendPacketRaw(false, {type = 3, value = v, x = getLocal().pos.x, y = getLocal().pos.y, punchx = a, punchy = b})
end

function harvest(seedID)
    for k, v in pairs(getTile()) do
        if GetTile(v.pos.x, v.pos.y).fg == seedID then
            FindPath(v.pos.x, v.pos.y)
            sleep(delay.harvest)
            spr(v.pos.x, v.pos.y, 18)
        end
    end
end

function plant(seedID)
    for k, v in pairs(getTile()) do
        if GetTile(v.pos.x, v.pos.y).fg == 0 and getTile(v.pos.x, v.pos.y + 1).fg ~= 0 then
            FindPath(v.pos.x, v.pos.y)
            sleep(delay.harvest)
            spr(v.pos.x, v.pos.y, seedID)
        end
    end
end
