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
})
minetest.register_craftitem("techtest:raspberry_fruit_snacks", {
        description = "Raspberry Fruit Snacks",
        inventory_image = "Raspberry.png",
        on_use = minetest.item_eat(4),
})
minetest.register_craft({
	output = "techtest:raspberry_fruit_snacks",
	recipe = {
		{"bonemeal:gelatain_powder", "bucket:bucket_water"},
		{"farming:raspberry", ""}
	},
})
