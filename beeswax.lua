-- beehive (when placed spawns bee)
minetest.register_node(":techtest:beehive", {
	description = "Beehive",
	drawtype = "plantlike",
	tiles = {"beehive.png"},
	inventory_image = "beehive.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	groups = {oddly_breakable_by_hand = 3, flammable = 1},
	sounds = default.node_sound_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", "size[8,6]"
			..default.gui_bg..default.gui_bg_img..default.gui_slots
			.. "image[3,0.8;0.8,0.8;mobs_bee_inv.png]"
			.. "list[current_name;beehive;4,0.5;1,1;]"
			.. "list[current_player;main;0,2.35;8,4;]"
			.. "listring[]")
		meta:get_inventory():set_size("beehive", 1)
	end,
	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name = "mobs:beehive", param2 = 1})
			if math.random(1, 4) == 1 then
				minetest.add_entity(pos, "mobs_animal:bee")
			end
		end
	end,
	on_punch = function(pos, node, puncher)
		-- yep, bee's don't like having their home punched by players
		puncher:set_hp(puncher:get_hp() - 4)
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		if listname == "beehive" then
			return 0
		end
		return stack:get_count()
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos)
		-- only dig beehive if no honey inside
		return meta:get_inventory():is_empty("beehive")
	end,
})
minetest.register_craft({
	output = "techtest:beehive",
	recipe = {
		{"mobs:bee","mobs:bee","mobs:bee"},
		{"mobs:bee","mobs:bee","mobs:bee"},
	}
})
-- beehive workings
minetest.register_abm({
	nodenames = {"techtest:beehive"},
	interval = 6,
	chance = 6,
	catch_up = false,
	action = function(pos, node)
		-- bee's only make honey during the day
		local tod = (minetest.get_timeofday() or 0) * 24000
		if tod < 5500 or tod > 18500 then
			return
		end
		-- is hive full?
		local meta = minetest.get_meta(pos)
		if not meta then return end -- for older beehives
		local inv = meta:get_inventory()
		local honey = inv:get_stack("beehive", 1):get_count()
		-- is hive full?
		if honey > 19 then
			return
		end
		-- no flowers no honey, nuff said!
		if #minetest.find_nodes_in_area_under_air(
			{x = pos.x - 4, y = pos.y - 3, z = pos.z - 4},
			{x = pos.x + 4, y = pos.y + 3, z = pos.z + 4},
			"group:flower") > 3 then
			inv:add_item("beehive", "techtest:beeswax")
		end
	end
})
minetest.register_craftitem("techtest:beeswax", {
        description = "Beeswax",
        inventory_image = "beeswax.png",
})
