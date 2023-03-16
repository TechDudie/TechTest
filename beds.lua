if not minetest.global_exists('beds') then return end


local function make_color_bed( Colorname , hex , ratio)
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
