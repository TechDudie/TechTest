dofile(minetest.get_modpath("techtest") .. "/beeswax.lua")
dofile(minetest.get_modpath("techtest") .. "/aluminum.lua")
dofile(minetest.get_modpath("techtest") .. "/pyrite.lua")
dofile(minetest.get_modpath("techtest") .. "/matches.lua")
minetest.register_craftitem("techtest:carrot_fruit_snacks", {
        description = "Carrot Fruit Snacks",
        inventory_image = "carrot.png",
        on_use = minetest.item_eat(6),
})
minetest.register_craft({
	output = "techtest:carrot_fruit_snacks",
	recipe = {
		{"bonemeal:gelatain_powder", "bucket:bucket_water"},
		{"farming:carrot", ""}
	},
	replacements={{'bucket:bucket_water','bucket:bucket_empty'}}
})
minetest.register_craftitem("techtest:blueberry_fruit_snacks", {
        description = "Blueberry Fruit Snacks",
        inventory_image = "blueberry.png",
        on_use = minetest.item_eat(4),
})
minetest.register_craft({
	output = "techtest:blueberry_fruit_snacks",
	recipe = {
		{"bonemeal:gelatain_powder", "bucket:bucket_water"},
		{"farming:blueberry", ""},
	},
	replacements={{'bucket:bucket_water','bucket:bucket_empty'}}
})
minetest.register_craftitem("techtest:raspberry_fruit_snacks", {
        description = "Raspberry Fruit Snacks",
        inventory_image = "raspberry.png",
        on_use = minetest.item_eat(4),
})
minetest.register_craft({
	output = "techtest:raspberry_fruit_snacks",
	recipe = {
		{"bonemeal:gelatain_powder", "bucket:bucket_water"},
		{"farming:raspberry", ""},
	},
	replacements={{'bucket:bucket_water','bucket:bucket_empty'}}
})
minetest.register_craftitem("techtest:peppermint", {
        description = "Peppermint Candy",
        inventory_image = "peppermint.png",
        on_use = minetest.item_eat(8),
})
minetest.register_craft({
	output = "techtest:peppermint",
	recipe = {
		{"dye:red", "farming:mint_leaf", "dye:white"},
		{"farming:mint_leaf", "farming:sugar", "farming:mint_leaf"},
		{"dye:white", "farming:mint_leaf", "dye:red"},
	},
})
minetest.register_craftitem("techtest:hershey5", {
        description = "Hershey Bar",
        inventory_image = "hershey5.png",
        on_use = minetest.item_eat(3,"techtest:hershey4"),
})
minetest.register_craft({
	output = "techtest:hershey5",
	recipe = {
		{"farming:chocolate", "farming:chocolate", "farming:chocolate"},
		{"farming:chocolate", "farming:chocolate", "farming:chocolate"},
	},
})
minetest.register_craftitem("techtest:hersheyr", {
        description = "Hershey Bar",
        inventory_image = "hershey4.png",
        on_use = minetest.item_eat(3,"techtest:hershey3"),
})
minetest.register_craftitem("techtest:hershey3", {
        description = "Hershey Bar",
        inventory_image = "hershey3.png",
        on_use = minetest.item_eat(3,"techtest:hershey2"),
})
minetest.register_craftitem("techtest:hershey2", {
        description = "Hershey Bar",
        inventory_image = "hershey2.png",
        on_use = minetest.item_eat(3,"techtest:hershey1"),
})
minetest.register_craftitem("techtest:hershey1", {
        description = "Hershey Bar",
        inventory_image = "hershey1.png",
        on_use = minetest.item_eat(3,"techtest:hershey0"),
})
minetest.register_craftitem("techtest:hershey0", {
        description = "Hershey Bar",
        inventory_image = "hershey0.png",
        on_use = minetest.item_eat(3),
})
-- make sure that stuff made fom artificial leather is 10x less good, durable, effective, etc.
minetest.register_craftitem("techtest:leather", {
        description = "Artificial Leather",
        inventory_image = "leather.png",
})
minetest.register_craft({
	output = "techtest:leather",
	recipe = {
		{"dye:brown", "techtest:beeswax", "dye:brown"},
		{"techtest:beeswax", "basic_materials:plastic", "techtest:beeswax"},
		{"dye:brown", "techtest:beeswax", "dye:brown"},
	},
})
minetest.register_craftitem("techtest:caramel", {
        description = "Caramel",
        inventory_image = "caramel.png",
	on_use = minetest.item_eat(2),
})
minetest.register_craft({
	output = "techtest:caramel",
	type = "cooking",
	recipe = "farming:sugar",
})
minetest.register_craftitem("techtest:soda_bucket", {
        description = "Soda Bucket",
        inventory_image = "soda.png",
	one_use = minetest.item_eat(3)
})
minetest.register_craft({
	output = "techtest:soda_bucket",
	type = "cooking",
	recipe = "techtest:caramel",
})
minetest.register_craft({
	output = "homedecor:soda_can",
	recipe = {
		{"techtest:aluminum", "", "techtest:aluminum"},
		{"techtest:aluminum", "techtest:soda_bucket", "techtest:aluminum"},
		{"techtest:aluminum", "techtest:aluminum", "techtest:aluminum"},
	},
})
