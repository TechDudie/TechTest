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
		{"farming:blueberry", ""}
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
		{"farming:raspberry", ""}
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
		{"dye:white", "farming:mint_leaf", "dye:red"}
	},
	replacements={{'bucket:bucket_water','bucket:bucket_empty'}}
})
