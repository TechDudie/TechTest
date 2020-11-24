minetest.register_node( ":techtest:mineral_pyrite", {
	description = S("Pyrite Ore"),
	tiles = { "default_stone.png^technic_mineral_pyrite.png" },
	is_ground_content = true,
	groups = {cracky=3, radioactive=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "techtest:pyrite_crystal",
})
minetest.register_craftitem(":techtest:pyrite_crystal", {
	description = S("Pyrite Crystal"),
	inventory_image = "pyrite_crystal.png",
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
	ore = "techtest:pyrite",
	wherein = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 4,
	clust_size = 6,
	y_min = -4096,
	y_max = -300,
	noise_params = metal_params,
	noise_threshold = metal_threshold,
})
