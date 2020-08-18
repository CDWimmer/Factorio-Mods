data:extend(
    {    
            --[[ {
            type = "item-group",
            name = "liquify-solidify",
            order = "z",
            order_in_recipe = "0",
            icon = "__LiquidBarrel__/graphics/liquid-barrel.png",
            icon_size = 64,
        },
            {
            type = "item-subgroup",
            name = "liquify",
            group = "liquify-solidify",
            order = "a"
        },
        {
            type = "item-subgroup",
            name = "liquify-2",
            group = "liquify-solidify",
            order = "b"
        }, ]]
        { 
            -- turn from fluid into item
            type = "recipe",
            name = "solidify-barrel",
            order = "[b]-[e]",
            category = "chemistry",
            --icon = "__base__/graphics/icons/barrel.png",
            --icon_size = 64,
            energy_required = 0.5,
            enabled = true,
            ingredients =
            {
            {type="fluid", name="fluid-barrel", amount=20},
            },
            results=
            {
            {type="item", name="empty-barrel", amount=20}
            },
            hide_from_player_crafting=true,
            --subgroup="liquify",
            crafting_machine_tint =
            {
            primary = {r=0.5, g=0.5, b=0.5}, 
            secondary = {r=0.5, g=0.5, b=0.5}, 
            tertiary = {r=0.5, g=0.5, b=0.5}, 
            },
        },
        {
            -- turn from item into liquid
            type = "recipe",
            name = "fluid-barrel",
            order = "[b]-[e]",
            category = "chemistry",
            energy_required = 0.5,
            enabled =true,
            ingredients =
            {
              {type="item", name="empty-barrel", amount=20}
            },
            results=
            {
              {type="fluid", name="fluid-barrel", amount=20}
            },
            hide_from_player_crafting=true,
            --subgroup = "liquify-2",
            crafting_machine_tint =
            {
              primary = {r=0.4, g=0.5, b=0.7}, 
              secondary = {r=0.5, g=0.6, b=0.6}, 
              tertiary = {r=0.5, g=0.5, b=0.55}, 
            }
        }
    }
)