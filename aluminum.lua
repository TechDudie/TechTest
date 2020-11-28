minetest.register_node( ":techtest:mineral_aluminum", {
	description = S("Aluminum Ore"),
	tiles = { "default_stone.png^mineral_aluminum.png" },
	is_ground_content = true,
	groups = {cracky=3, radioactive=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "techtest:aluminum_lump",
})
minetest.register_craftitem(":techtest:aluminum_lump", {
	description = S("Aluminum Lump"),
	inventory_image = "aluminum_lump.png",
})
minetest.register_craftitem(":technic:aluminum", {
	description = S("Aluminum Ingot"),
	inventory_image = "aluminum.png",
})
local metal_params = {
	offset = 0,
	scale = 1,
	spread = {x = 100, y = 100, z = 100},
	seed = 227119984289,
	octaves = 3,
	persist = 0.7
}
local metal_threshold = 0.55
minetest.register_ore({
	ore_type = "scatter",
	ore = "techtest:aluminum",
	wherein = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 4,
	clust_size = 6,
	y_min = -400,
	y_max = -80,
	noise_params = metal_params,
	noise_threshold = metal_threshold,
})
minetest.register_craft({
	type = 'cooking',
	recipe = "techtest:aluminum_lump",
	output = "techtest:aluminum_ingot",
})
