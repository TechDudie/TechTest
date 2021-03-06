dofile(minetest.get_modpath("techtest") .. "/beeswax.lua")
dofile(minetest.get_modpath("techtest") .. "/aluminum.lua")
dofile(minetest.get_modpath("techtest") .. "/pyrite.lua")
dofile(minetest.get_modpath("techtest") .. "/matches.lua")
dofile(minetest.get_modpath("techtest") .. "/gems.lua")
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
minetest.register_craftitem("techtest:hershey4", {
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
-- i will not add the "rrplacements" variable, if i do, you can prouduce buckets from soda
minetest.register_craft({
	output = "homedecor:soda_can",
	recipe = {
		{"techtest:aluminum", "", "techtest:aluminum"},
		{"techtest:aluminum", "techtest:soda_bucket", "techtest:aluminum"},
		{"techtest:aluminum", "techtest:aluminum", "techtest:aluminum"},
	},
})
minetest.register_craftitem("techtest:candy_cane", {
        description = "Candy Cane",
        inventory_image = "candy_cane.png",
	on_use = minetest.item_eat(6)
})
minetest.register_craft({
	output = "techtest:candy_cane",
	recipe = {
		{"farming:mint_leaf", "dye:white", "farming:mint_leaf"},
		{"dye:red", "farming:sugar", "dye:red"},
		{"farming:mint_leaf", "farming:mint_leaf", "dye:white"},
	},
})
minetest.register_craftitem("techtest:wchoco_ppmpretzel", {
        description = "White Chocolate Peppermint Pretzel",
        inventory_image = "wchoco_ppmpretzel.png",
	on_use = minetest.item_eat(12)
})
minetest.register_craft({
	output = "techtest:wchoco_ppmpretzel",
	recipe = {
		{"dye:red", "techtest:pretzel", "dye:white"},
		{"farming:mint_leaf", "farming:cocoa_beans", "farming:mint_leaf"},
		{"farming:sugar", "techtest:candy_cane", "farming:sugar"},
	},
})
minetest.register_craftitem("techtest:pretzel", {
        description = "Pretzel",
        inventory_image = "pretzel.png",
	on_use = minetest.item_eat(8)
})
minetest.register_craft({
	output = "techtest:pretzel",
	recipe = {
		{"farming:sugar", "mobs:bucket_milk", "farming:sugar"},
		{"farming:flour", "bucket:bucket_water", "farming:flour"},
		{"mobs:butter", "mobs:egg", "mobs:butter"},
	},
	replacements = {{"mobs:bucket_milk","bucket:bucket",},{"bucket:bucket_water","bucket:bucket"},}
})
minetest.register_craftitem("techtest:golden_pretzel", {
	description = "Golden Pretzel",
	inventory_image = "golden_pretzel.png",
	on_use = minetest.item_eat(16)
})
minetest.register_craft({
	output = "techtest:golden_pretzel",
	recipe = {
		{"", "default:gold_lump",""},
		{"default:gold_lump", "techtest:pretzel", "default:gold_lump"},
		{"", "default:gold_lump", ""},
	},
})
function make_color_bed( Colorname , hex , ratio)
	beds.register_bed("techtest:"..Colorname.."_bed", {
		description = Colorname.." Bed",
		inventory_image = "(colors_bed_sheet.png^[colorize:"..hex..":"..ratio.."^colors_bed.png)",
		wield_image = "(colors_bed_sheet.png^[colorize:"..hex..":"..ratio.."^colors_bed.png)",
		tiles = {
			bottom = {
				"colors_bed_top_bottom.png^[colorize:"..hex..":"..ratio.."^[transformR90",
				"colors_bed_under.png",
				"colors_bed_side_bottom_sheet.png^[colorize:"..hex..":"..ratio.."^colors_bed_side_bottom_r.png",
				"colors_bed_side_bottom_sheet.png^[colorize:"..hex..":"..ratio.."^colors_bed_side_bottom_r.png^[transformfx",
				"beds_transparent.png",
				"colors_bed_side_bottom_sheet.png^[colorize:"..hex..":"..ratio.."^colors_bed_side_bottom.png"
			},
			top = {
				"colors_bed_top_top_sheet.png^[colorize:"..hex..":"..ratio.."^colors_bed_top_top.png^[transformR90",
				"colors_bed_under.png",
				"colors_bed_side_top_r_sheet.png^[colorize:"..hex..":"..ratio.."^colors_bed_side_top_r.png",
				"colors_bed_side_top_r_sheet.png^[colorize:"..hex..":"..ratio.."^colors_bed_side_top_r.png^[transformfx",
				"beds_bed_side_top.png",
				"beds_transparent.png",
			}
		},
	        recipe = {
			{"wool:"..Colorname, "wool:"..Colorname, "wool"..Colorname},
			{"group:wood", "group:wood", "group:wood"},
		},
		nodebox = {
			bottom = {-0.5, -0.5, -0.5, 0.5, 0.0625, 0.5},
			top = {-0.5, -0.5, -0.5, 0.5, 0.0625, 0.5},
		},
		selectionbox = {-0.5, -0.5, -0.5, 0.5, 0.0625, 1.5},

	})


	minetest.register_craft({
		output = "techtest:"..Colorname.."_bed_bottom",
		recipe = {
			{tostring("wool:"..Colorname), tostring("wool:"..Colorname), tostring("wool:"..Colorname)},
			{"group:wood", "group:wood", "group:wood"}}
		})
end

make_color_bed("blue" , "#003579" , "175")
make_color_bed("yellow" , "#FCF110" , "175")
make_color_bed("green" , "#67EB1C" , "175")
make_color_bed("black" , "#1C1C1C" , "200")
make_color_bed("cyan" , "#00959D" , "175")
make_color_bed("grey" , "#9B9B9B" , "175")
make_color_bed("dark_grey" , "#464646" , "175")
make_color_bed("dark_green" , "#2B7B00" , "200")
make_color_bed("brown" , "#6C3800" , "200")
make_color_bed("orange" , "#E0601A" , "200")
make_color_bed("pink" , "#FEA4A4" , "200")
make_color_bed("magenta" , "#D70481" , "175")
make_color_bed("violet" , "#480680" , "175")
