dofile(minetest.get_modpath("techtest") .. "/beeswax.lua")
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
        inventory_image = "hershey5.png",
        on_use = minetest.item_eat(3),
})
