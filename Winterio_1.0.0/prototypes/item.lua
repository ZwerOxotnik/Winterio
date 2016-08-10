

data:extend({

  {
    type = "item",
    name = "snow",
    icon = "__Winterio__/graphics/icons/snow.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "0",
    stack_size = 200
  },
  {
    type = "item",
    name = "snow-furnace",
    icon = "__Winterio__/graphics/icons/snow-furnace.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "b",
	place_result = "snow-furnace",
    stack_size = 50
  },
  {
    type = "item",
    name = "burner-assembling-machine",
    icon = "__Winterio__/graphics/icons/burner-assembling-machine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "0",
	place_result = "burner-assembling-machine",
    stack_size = 50
  },
  {
    type = "item",
    name = "snow-pump",
    icon = "__base__/graphics/icons/offshore-pump.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "b[fluids]-a[offshore-pump]",
	place_result = "snow-pump",
    stack_size = 50
  }
  
})