minetest.register_abm({
    nodenames = {"default:dirt_with_grass"},
    interval = 1,
    chance = 30,
    action = function(pos, node, active_object_count, active_object_count_wider)
    if minetest.get_node(vector.add(pos, vector.new(0, 1, 0))).name ~= "air" then return false end
        minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, {name = "default:grass_1"})
    end
})


minetest.override_item('default:grass_5', {
    tiles = {"grass.png"},
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.450, -0.5, -0.450, -0.4, 0.2, -0.4},
            {-0.250, -0.5, -0.250, -0.3, 0.1, -0.3},
            {-0.050, -0.5, -0.450, -0.1, 0.150, -0.4},
            {0.1, -0.5, -0.250, 0.150, 0.1, -0.3},
            {0.3, -0.5, -0.450, 0.350, 0.250, -0.4},
            {-0.450, -0.5, -0.050, -0.4, 0.1, -0.0},
            {-0.050, -0.5, -0.050, -0.1, 0.250, -0.0},
            {0.3, -0.5, -0.050, 0.350, 0.2, -0.0},
            {0.1, -0.5, 0.2, 0.150, 0.150, 0.150},
            {-0.150, -0.5, 0.2, -0.2, 0.1, 0.150},
            {-0.450, -0.5, 0.450, -0.4, 0.1, 0.4},
            {-0.050, -0.5, 0.450, -0.1, 0.250, 0.4},
            {0.3, -0.5, 0.450, 0.350, 0.2, 0.4},
        },
    }
})


minetest.override_item('default:grass_4', {
    tiles = {"grass.png"},
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.450, -0.5, -0.450, -0.4, 0.1, -0.4},
            {-0.250, -0.5, -0.250, -0.3, 0.0, -0.3},
            {-0.050, -0.5, -0.450, -0.1, 0.050, -0.4},
            {0.1, -0.5, -0.250, 0.150, 0.150, -0.3},
            {0.3, -0.5, -0.450, 0.350, 0.2, -0.4},
            {-0.450, -0.5, -0.050, -0.4, 0.050, -0.0},
            {-0.050, -0.5, -0.050, -0.1, 0.2, -0.0},
            {0.1, -0.5, 0.2, 0.150, 0.150, 0.150},
            {-0.150, -0.5, 0.2, -0.2, 0.0, 0.150},
            {-0.450, -0.5, 0.450, -0.4, 0.050, 0.4},
            {0.3, -0.5, 0.450, 0.350, 0.1, 0.4},
        },
    }
})

minetest.override_item('default:grass_3', {
    tiles = {"grass.png"},
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.450, -0.5, -0.450, -0.4, -0.1, -0.4},
            {-0.050, -0.5, -0.450, -0.1, -0.050, -0.4},
            {0.1, -0.5, -0.250, 0.150, 0.050, -0.3},
            {0.3, -0.5, -0.450, 0.350, 0.1, -0.4},
            {-0.050, -0.5, -0.050, -0.1, 0.1, -0.0},
            {0.1, -0.5, 0.2, 0.150, -0.050, 0.150},
            {-0.150, -0.5, 0.2, -0.2, -0.1, 0.150},
            {0.3, -0.5, 0.450, 0.350, 0.0, 0.4},
        },
    }
})

minetest.override_item('default:grass_2', {
    tiles = {"grass.png"},
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.450, -0.5, -0.450, -0.4, -0.3, -0.4},
            {-0.050, -0.5, -0.450, -0.1, -0.250, -0.4},
            {0.1, -0.5, -0.250, 0.150, -0.150, -0.3},
            {-0.050, -0.5, -0.050, -0.1, -0.2, -0.0},
            {0.1, -0.5, 0.2, 0.150, -0.2, 0.150},
            {-0.150, -0.5, 0.2, -0.2, -0.150, 0.150},
        },
    }
})

minetest.override_item('default:grass_1', {
    tiles = {"grass.png"},
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.450, -0.5, -0.450, -0.4, -0.4, -0.4},
            {-0.050, -0.5, -0.450, -0.1, -0.350, -0.4},
            {-0.050, -0.5, -0.050, -0.1, -0.450, -0.0},
            {0.1, -0.5, 0.2, 0.150, -0.3, 0.150},
        },
    }
})


--grass end

minetest.register_abm({
    nodenames = {"default:leaves"},
   neighbors = {"default:air"},
    interval = 50.0,
    chance = 50,
    action = function(pos)
        minetest.add_particle({ 	
        pos = {x=pos.x, y=pos.y - 1, z=pos.z}, 	
        velocity = {x=0, y= - 1, z=0}, 	
        acceleration = {x=0, y=0, z=0}, 	
        expirationtime = 30, 	
        size = 5, 	
        collisiondetection = true, 	
        vertical = false, 	
        texture = "leaf.png", 	
        playername = "singleplayer" })
    end
})

minetest.register_abm({
    nodenames = {"default:jungleleaves"},
  neighbors = {"default:air"},
    interval = 50.0, 
    chance = 50, 
    action = function(pos)
        minetest.add_particle({ 	
        pos = {x=pos.x, y=pos.y - 1, z=pos.z}, 	
        velocity = {x=0, y= - 1, z=0}, 	
        acceleration = {x=0, y=0, z=0}, 	
        expirationtime = 30, 	
        size = 5, 	
        collisiondetection = true, 	
        vertical = false, 	
        texture = "leaf.png", 	
        playername = "singleplayer" })
    end
})

minetest.register_abm({
    nodenames = {"default:pine_needles"},
   neighbors = {"default:air"},
    interval = 50.0, 
    chance = 50, 
    action = function(pos)
        minetest.add_particle({ 	
        pos = {x=pos.x, y=pos.y - 1, z=pos.z}, 	
        velocity = {x=0, y= - 1, z=0}, 	
        acceleration = {x=0, y=0, z=0}, 	
        expirationtime = 30, 	
        size = 5, 	
        collisiondetection = true, 	
        vertical = false, 	
        texture = "leaf.png", 	
        playername = "singleplayer" })
    end
})

minetest.register_abm({
    nodenames = {"default:acacia_leaves"},
   neighbors = {"default:air"},
    interval = 50.0, 
    chance = 50, 
    action = function(pos)
        minetest.add_particle({ 	
        pos = {x=pos.x, y=pos.y - 1, z=pos.z}, 	
        velocity = {x=0, y= - 1, z=0}, 	
        acceleration = {x=0, y=0, z=0}, 	
        expirationtime = 30, 	
        size = 5, 	
        collisiondetection = true, 	
        vertical = false, 	
        texture = "leaf.png", 	
        playername = "singleplayer" })
    end
})

minetest.register_abm({
    nodenames = {"default:aspen_leaves"},
   neighbors = {"default:air"},
    interval = 50.0, 
    chance = 50, 
    action = function(pos)
        minetest.add_particle({ 	
        pos = {x=pos.x, y=pos.y - 1, z=pos.z}, 	
        velocity = {x=0, y= - 1, z=0}, 	
        acceleration = {x=0, y=0, z=0}, 	
        expirationtime = 30, 	
        size = 5, 	
        collisiondetection = true, 	
        vertical = false, 	
        texture = "leaf.png", 	
        playername = "singleplayer" })
    end
})

--leaves end

minetest.override_item('default:papyrus', {
    tiles = {"p.png"},
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.450, -0.5, -0.450, -0.350, 0.5, -0.350},
            {-0.050, -0.5, -0.450, 0.050, 0.5, -0.350},
            {0.450, -0.5, -0.450, 0.350, 0.5, -0.350},
            
            {-0.450, -0.5, -0.050, -0.350, 0.5, 0.050},
            {-0.050, -0.5, -0.050, 0.050, 0.5, 0.050},
            {0.450, -0.5, -0.050, 0.350, 0.5, 0.050},
            
            {-0.450, -0.5, 0.450, -0.350, 0.5, 0.350},
            {-0.050, -0.5, 0.450, 0.050, 0.5, 0.350},
            {0.450, -0.5, 0.450, 0.350, 0.5, 0.350},
        },
    }
})


minetest.override_item('default:water_source', {
    tiles = {"w.png"},
    use_texture_alpha = true,
    drawtype = "glasslike",
    paramtype = "light",
})

minetest.override_item('default:water_flowing', {
    tiles = {"w.png"},
    use_texture_alpha = true,
    drawtype = "glasslike",
    paramtype = "light",
})

minetest.override_item('default:river_water_source', {
    tiles = {"w2.png"},
    use_texture_alpha = true,
    drawtype = "glasslike",
    paramtype = "light",
})

minetest.override_item('default:river_water_flowing', {
    tiles = {"w2.png"},
    use_texture_alpha = true,
    drawtype = "glasslike",
    paramtype = "light",
})




minetest.override_item('default:pine_tree', {
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.3, -0.5, -0.5, 0.3, 0.5, 0.5},
            {-0.5, -0.5, -0.3, 0.5, 0.5, 0.3},
        },
    }
})

minetest.override_item('default:aspen_tree', {
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.3, -0.5, -0.5, 0.3, 0.5, 0.5},
            {-0.5, -0.5, -0.3, 0.5, 0.5, 0.3},
        },
    }
})

minetest.override_item('default:jungletree', {
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.3, -0.5, -0.5, 0.3, 0.5, 0.5},
            {-0.5, -0.5, -0.3, 0.5, 0.5, 0.3},
        },
    }
})

minetest.override_item('default:tree', {
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.3, -0.5, -0.5, 0.3, 0.5, 0.5},
            {-0.5, -0.5, -0.3, 0.5, 0.5, 0.3},
        },
    }
})

minetest.override_item('default:acacia_tree', {
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.3, -0.5, -0.5, 0.3, 0.5, 0.5},
            {-0.5, -0.5, -0.3, 0.5, 0.5, 0.3},
        },
    }
})

minetest.override_item('default:apple', {
    tiles = {"applet.png","appleb.png","apples.png","apples.png","apples.png","apples.png",},
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {-0.2, -0.5, -0.1, 0.2, -0.190, 0.1},
            {-0.1, -0.5, -0.2, 0.1, -0.190, 0.2},
            {-0.060, -0.5, -0.060, 0.060, -0.1, 0.060},
        },
    }
})

minetest.register_abm({
    nodenames = {"default:water_flowing","default:water_flowing"},
    interval = 1,
    chance = 30,
    action = function(pos, node, active_object_count, active_object_count_wider)
    if minetest.get_node(vector.add(pos, vector.new(0, -1, 0))).name ~= "default:sand" then return false end
        minetest.add_particle({ 	
        pos = {x=pos.x, y=pos.y, z=pos.z}, 	
        velocity = {x=0, y= 1, z=0}, 	
        acceleration = {x=0, y=0, z=0}, 	
        expirationtime = 5, 	
        size = 5, 	
        collisiondetection = true, 	
        vertical = false, 	
        texture = "wb.png", 	
        playername = "singleplayer" })
    end
})
