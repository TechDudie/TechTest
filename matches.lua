minetest.register_tool("techtest:match", {
	description = "Match",
	inventory_image = "match.png",
	sound = {breaks = "default_tool_breaks"},
	on_use = function(itemstack, user, pointed_thing)
		local sound_pos = pointed_thing.above or user:get_pos()
		local player_name = user:get_player_name()
		if pointed_thing.type == "node" then
			local node_under = minetest.get_node(pointed_thing.under).name
			local nodedef = minetest.registered_nodes[node_under]
			if not nodedef then
				return
			end
			if minetest.is_protected(pointed_thing.under, player_name) then
				minetest.chat_send_player(player_name, "This area is protected")
				return
			end
			if nodedef.on_ignite then
				nodedef.on_ignite(pointed_thing.under, user)
			elseif minetest.get_item_group(node_under, "flammable") >= 1
					and minetest.get_node(pointed_thing.above).name == "air" then
				minetest.set_node(pointed_thing.above, {name = "fire:basic_flame"})
			end
		end
		if not (creative and creative.is_enabled_for
				and creative.is_enabled_for(player_name)) then
			-- Wear tool
			local wdef = itemstack:get_definition()
			itemstack:add_wear(1000000)
			-- Tool break sound
			if itemstack:get_count() == 0 and wdef.sound and wdef.sound.breaks then
				minetest.sound_play(wdef.sound.breaks, {pos = sound_pos, gain = 0.5})
			end
			return itemstack
		end
	end
})

minetest.register_craft({
	output = "techtest:match",
	recipe = {
		{"default:coal_lump","technic:sulfur_lump","default:coal_lump"},
		{"dye:red","default:stick","dye:red"},
		{"","default:stick",""},
	}
})
