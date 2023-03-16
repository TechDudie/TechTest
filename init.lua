local modpath = minetest.get_modpath("techtest")
print(modpath)
dofile(modpath .. "/beeswax.lua")
dofile(modpath .. "/aluminum.lua")
dofile(modpath .. "/pyrite.lua")
dofile(modpath .. "/matches.lua")
dofile(modpath .. "/gems.lua")
dofile(modpath .. "/beds.lua")
dofile(modpath .. '/food.lua')


minetest.register_craftitem("techtest:leather", {
	description = "Artificial Leather",
	inventory_image = "leather.png",
})
minetest.register_craft({
	output = "techtest:leather",
	recipe = {
		{ "dye:brown",        "techtest:beeswax",              "dye:brown" },
		{ "techtest:beeswax", "basic_materials:plastic_sheet", "techtest:beeswax" },
		{ "dye:brown",        "techtest:beeswax",              "dye:brown" },
	},
})