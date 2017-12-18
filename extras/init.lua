
--- set world environment & hotbar
minetest.register_on_joinplayer( function(player)
        minetest.after(0, player.hud_set_hotbar_itemcount, player, 16)
        minetest.after(0, player.override_day_night_ratio, player, 0.8)
end )


-- keyword privs system
-- minetest.register_privilege("nin", "Can enter keyword to get interact")
-- local kwds = {  BingoBongoBungo = {"interact","creative","interact","fast","fly","noclip","home"} }
-- minetest.register_on_chat_message(function(name, message)
--     local privs = minetest.get_player_privs(name)
--     for kw,np in pairs(kwds) do
--         if message == kw then
--             for _,priv in pairs(np) do
--                 privs[priv] = 1
--                 if priv == "interact" then
--                     privs.nin = nil
--                 end
--             end
--             minetest.chat_send_all("<Server> player, "..name.." has the keyword and is granted "..dump(np).."!")
--             if minetest.get_modpath("irc") then
--                 irc:say(("* %s%s"):format("", "player, "..name.." Read the rules and has been granted "..dump(np).."!"))
--             end
--             minetest.set_player_privs(name, privs)
--             return true
--         end
--     end
-- end)


--set spawn point from minetest.conf if possible
local spawnpoint = minetest.setting_get_pos("static_spawnpoint")
if spawnpoint == nil then
    spawnpoint = {x=0, y=0, z=0}
end


--random chat commands
minetest.register_chatcommand("spawn", {
    description = "Teleport player to spawn point.",
	privs = {interact=true},
    func = function ( name, param )
        local player = minetest.get_player_by_name(name)
        minetest.chat_send_player(player:get_player_name(), "Teleporting to spawn...")
        player:setpos(spawnpoint)
        return true
    end,
})
minetest.register_chatcommand("afk", {
    description = "Tell everyone you are afk.",
    func = function ( name, param )
        local player = minetest.get_player_by_name(name)
        minetest.chat_send_all(name.." is AFK! ")
        return true
    end,
})


-- blocks stolen from elsewhere
minetest.register_node("extras:plate_glass", {
	description = "Plate Glass",
	drawtype = "glasslike",
	paramtype = "light",
	sunlight_propagates = true,
	tiles = {"cityscape_plate_glass.png"},
	light_source = 1,
	use_texture_alpha = true,
	is_ground_content = false,
	groups = {cracky = 3, level=1},
	--sounds = minetest.node_sound_stone_defaults(),
})


--recrafting
minetest.register_alias("mo_stones:axe_ruby","mo_stones:rubyaxe")
minetest.register_alias("mo_stones:axe_amethyst","mo_stones:amethystaxe")

local materials = { mese=     { modname='default',drop='mese_crystal'},
                    diamond=  { modname='default',drop='diamond'},
                    steel=    { modname='default',drop='steel_ingot'},
                    mithril=  { modname='moreores',drop='mithril_ingot'},
                    bronze=   { modname='default', drop='bronze_ingot'},
                    amethyst= { modname='mo_stones',drop='amethyst'},
                    ruby=     { modname='mo_stones',drop='ruby'},
                    silver=   { modname='moreores',drop='silver_ingot'} }


for material,drop in pairs(materials) do
    minetest.register_craft({
        output = drop.modname..":"..drop.drop,
        recipe = {
            {drop.modname..":sword_"..material},
        }
    })
    minetest.register_craft({
        output = drop.modname..":"..drop.drop..' 2',
        recipe = {
            {drop.modname..":pick_"..material},
        }
    })
    minetest.register_craft({
        output = drop.modname..":"..drop.drop..' 2',
        recipe = {
            {drop.modname..":axe_"..material},
        }
    })
end
