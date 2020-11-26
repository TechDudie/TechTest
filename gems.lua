minetest.register_craftitem("techtest:amethyst", {
        description = "Amethyst",
        inventory_image = "amethyst.png",
})
minetest.register_craftitem("techtest:amethyst_shard", {
        description = "Amethyst Shard",
        inventory_image = "amethyst_shard.png",
})
minetest.register_craft({
	output = "techtest:amethyst_shard",
	recipe = {
		{"mesecons_materials:silicon", "mesecons_materials:silicon", "mesecons_materials:silicon"},
		{"mesecons_materials:silicon", "", "mesecons_materials:silicon"},
		{"mesecons_materials:silicon", "mesecons_materials:silicon", "mesecons_materials:silicon"},
	},
})
minetest.register_craft({
	output = "techtest:amethyst",
	recipe = {
		{"techtest:amethyst_shard", "techtest:amethyst_shard", "techtest:amethyst_shard"},
		{"techtest:amethyst_shard", "techtest:amethyst_shard", "techtest:amethyst_shard"},
		{"techtest:amethyst_shard", "techtest:amethyst_shard", "techtest:amethyst_shard"},
	},
})
