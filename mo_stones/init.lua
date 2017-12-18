minetest.register_node("mo_stones:patio", {
	tiles = {"mo_stones_patio.png"},
	groups = {cracky=2,},
	description = "Patio",
})

minetest.register_node("mo_stones:patio_brick", {
	tiles = {"mo_stones_patio_brick.png"},
	groups = {cracky=2,},
	description = "Patio Brick",
})

minetest.register_node("mo_stones:patiostone", {
	tiles = {"mo_stones_patiostone.png"},
	groups = {cracky=2,},
	description = "Patio Stone",
})

minetest.register_craft({
	output = 'mo_stones:patio',
	recipe = {
		{'mo_stones:patiostone', 'mo_stones:patiostone', ''},
		{'mo_stones:patiostone', 'mo_stones:patiostone', ''},
		{'', '', ''},
	}
})


minetest.register_craft({
	type = "fuel",
	recipe = "mo_stones:patio",
	burntime = 7,
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "mo_stones:patiostone",
    wherein        = "default:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 8,
    clust_size     = 3,
    height_min     = -31000,
    height_max     = 64,
})

minetest.register_node("mo_stones:chalk", {
	tiles = {"mo_stones_chalk.png"},
	groups = {cracky=3,},
	drop = 'mo_stones:chunk_of_chalk',
	description = "Chalk",
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "mo_stones:chalk",
    wherein        = "default:stone","default:desert_stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 8,
    clust_size     = 3,
    height_min     = 0,
    height_max     = 1234,
})

minetest.register_craftitem("mo_stones:chunk_of_chalk", {
	description = "Chalk Chunk",
	inventory_image = "mo_stones_chunk_of_chalk.png",
 
	on_drop = function(itemstack, dropper, pos)
		-- Prints a random number and removes one item from the stack
		minetest.chat_send_all(math.random())
		itemstack:take_item()
		return itemstack
	end,
})

minetest.register_craft({
	output = 'mo_stones:chunk_of_chalk',
	recipe = {
		{'', '', ''},
		{'', 'mo_stones:chalk', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mo_stones:chalk',
	recipe = {
		{'mo_stones:chunk_of_chalk', 'mo_stones:chunk_of_chalk', ''},
		{'mo_stones:chunk_of_chalk', 'mo_stones:chunk_of_chalk', ''},
		{'', '', ''},
	}
})

minetest.register_craftitem("mo_stones:slate", {
	description = "Slate",
	inventory_image = "mo_stones_slate.png",
 
	on_drop = function(itemstack, dropper, pos)
		-- Prints a random number and removes one item from the stack
		minetest.chat_send_all(math.random())
		itemstack:take_item()
		return itemstack
	end,
})

minetest.register_node("mo_stones:block_of_slate", {
	tiles = {"mo_stones_block_of_slate.png"},
	groups = {cracky=2,},
	drop = 'mo_stones:slate',
	description = "Slate Block",
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "mo_stones:block_of_slate",
    wherein        = "default:sand","default:desert_sand",
    clust_scarcity = 8*8*8,
    clust_num_ores = 8,
    clust_size     = 3,
    height_min     = 0,
    height_max     = 124214125,
})

minetest.register_craft({
	output = 'mo_stones:slate',
	recipe = {
		{'', '', ''},
		{'mo_stones:block_of_slate', '', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'mo_stones:block_of_slate',
	recipe = {
		{'mo_stones:slate', 'mo_stones:slate', 'mo_stones:slate'},
		{'mo_stones:slate', 'mo_stones:slate', 'mo_stones:slate'},
		{'mo_stones:slate', 'mo_stones:slate', 'mo_stones:slate'},
	}
})

minetest.register_node("mo_stones:mineral_ruby", {
	tiles = {"default_stone.png^mo_stones_mineral_ruby.png"},
	groups = {cracky=1, stone=1},
	drop = 'mo_stones:ruby',
	description = "Ruby Ore",
})

minetest.register_craftitem("mo_stones:ruby", {
	description = "Ruby",
	inventory_image = "mo_stones_ruby.png",
 
	on_drop = function(itemstack, dropper, pos)
		-- Prints a random number and removes one item from the stack
		minetest.chat_send_all(math.random())
		itemstack:take_item()
		return itemstack
	end,
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "mo_stones:mineral_ruby",
    wherein        = "default:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 8,
    clust_size     = 3,
    height_min     = -50,
    height_max     = -214241284918241928,
})

minetest.register_tool("mo_stones:rubypick", {
    description = "Ruby Pickaxe",
    inventory_image = "mo_stones_tool_rubypick.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            cracky={times={[1]=5.00, [2]=1.50, [3]=1.00}, uses=1000, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'mo_stones:rubypick',
	recipe = {
		{'mo_stones:ruby', 'mo_stones:ruby', 'mo_stones:ruby'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("mo_stones:sword_ruby", {
    description = "Ruby Sword",
    inventory_image = "mo_stones_tool_rubysword.png",
    tool_capabilities = {
        -- Digging capabilities
        max_drop_level = 1,
        groupcaps = {
            fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
            snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
            choppy={times={[3]=0.65}, uses=40, maxlevel=0}
        },
        -- Damage capabilities
        full_punch_interval = 0.8,
        damage_groups = {fleshy=8, snappy=4, choppy=2},
    }
})

minetest.register_craft({
	output = 'mo_stones:sword_ruby',
	recipe = {
		{'', 'mo_stones:ruby', ''},
		{'', 'mo_stones:ruby', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("mo_stones:rubyaxe", {
    description = "Ruby Axe",
    inventory_image = "mo_stones_tool_rubyaxe.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            choppy={times={[1]=4.00, [2]=1.50, [3]=1.00}, uses=70, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'mo_stones:rubyaxe',
	recipe = {
		{'mo_stones:ruby', 'mo_stones:ruby', ''},
		{'mo_stones:ruby', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("mo_stones:rubyshovel", {
    description = "Ruby Shovel",
    inventory_image = "mo_stones_tool_rubyshovel.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            crumbly={times={[1]=4.00, [2]=1.50, [3]=1.00}, uses=70, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'mo_stones:rubyshovel',
	recipe = {
		{'', 'mo_stones:ruby', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_node("mo_stones:mineral_amethyst", {
	tiles = {"default_stone.png^mo_stones_mineral_amethyst.png"},
	groups = {cracky=1, stone=1},
	drop = 'mo_stones:amethyst',
	description = "Amethyst Ore",
})

minetest.register_craftitem("mo_stones:amethyst", {
	description = "Amethyst",
	inventory_image = "mo_stones_amethyst.png",
 
	on_drop = function(itemstack, dropper, pos)
		-- Prints a random number and removes one item from the stack
		minetest.chat_send_all(math.random())
		itemstack:take_item()
		return itemstack
	end,
})

minetest.register_tool("mo_stones:amethystaxe", {
    description = "Amethyst Axe",
    inventory_image = "mo_stones_tool_amethystaxe.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            choppy={times={[1]=3.00, [2]=1.50, [3]=1.00}, uses=70, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'mo_stones:amethystaxe',
	recipe = {
		{'mo_stones:amethyst', 'mo_stones:amethyst', ''},
		{'mo_stones:amethyst', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("mo_stones:amethystpick", {
    description = "Amethyst Pickaxe",
    inventory_image = "mo_stones_tool_amethystpick.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            cracky={times={[1]=5.00, [2]=1.50, [3]=1.00}, uses=1000, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'mo_stones:amethystpick',
	recipe = {
		{'mo_stones:amethyst', 'mo_stones:amethyst', 'mo_stones:amethyst'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("mo_stones:amethystshovel", {
    description = "Amethyst Shovel",
    inventory_image = "mo_stones_tool_amethystshovel.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            crumbly={times={[1]=3.00, [2]=1.50, [3]=1.00}, uses=70, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'mo_stones:amethystshovel',
	recipe = {
		{'', 'mo_stones:amethyst', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("mo_stones:sword_amethyst", {
    description = "Amethyst Sword",
    inventory_image = "mo_stones_tool_amethystsword.png",
    tool_capabilities = {
        -- Digging capabilities
        max_drop_level = 1,
        groupcaps = {
            fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
            snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
            choppy={times={[3]=0.65}, uses=40, maxlevel=0}
        },
        -- Damage capabilities
        full_punch_interval = 0.8,
        damage_groups = {fleshy=8, snappy=4, choppy=2},
    }
})

minetest.register_craft({
	output = 'mo_stones:sword_amethyst',
	recipe = {
		{'', 'mo_stones:amethyst', ''},
		{'', 'mo_stones:amethyst', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "mo_stones:mineral_amethyst",
    wherein        = "default:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 8,
    clust_size     = 3,
    height_min     = -30,
    height_max     = -21312412412,
})

minetest.register_node("mo_stones:marble", {
	tiles = {"mo_stones_marble.png"},
	groups = {cracky=2,},
	drop = 'mo_stones:marble_fragment',
	description = "Marble Block",
})

minetest.register_craftitem("mo_stones:marble_fragment", {
	description = "Marble Fragment",
	inventory_image = "mo_stones_marble_fragment.png",
 
	on_drop = function(itemstack, dropper, pos)
		-- Prints a random number and removes one item from the stack
		minetest.chat_send_all(math.random())
		itemstack:take_item()
		return itemstack
	end,
})

minetest.register_craft({
	output = 'mo_stones:marble',
	recipe = {
		{'mo_stones:marble_fragment', 'mo_stones:marble_fragment', 'mo_stones:marble_fragment'},
		{'mo_stones:marble_fragment', 'mo_stones:marble_fragment', 'mo_stones:marble_fragment'},
		{'mo_stones:marble_fragment', 'mo_stones:marble_fragment', 'mo_stones:marble_fragment'},
	}
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "mo_stones:marble",
    wherein        = "default:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 8,
    clust_size     = 3,
    height_min     = 1,
    height_max     = 12354,
})
