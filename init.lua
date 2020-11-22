minetest.register_craftitem("techtest:gelatain", {
    description = 'Gelatain',
    inventory_image = 'gelatain.png'
})

minetest.register_craft({
	output = "techtest:gelatin",
	recipe = {
		{"bonemeal:bonemeal", "bonemeal:bonemeal", "bonemeal:bonemeal"},
		{"bonemeal:bonemeal", "bonemeal:bonemeal", "bonemeal:bonemeal"},
		{"bonemeal:bonemeal", "bonemeal:bonemeal", "bucket:bucket_water"},
	},
})
