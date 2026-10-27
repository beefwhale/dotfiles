return{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()
        
        -- basic telescope configuration
        -- local conf = require("telescope.config").values
        -- local function toggle_telescope(harpoon_files)
        --     local file_paths = {}
        --     for _, item in ipairs(harpoon_files.items) do
        --         table.insert(file_paths, item.value)
        --     end
        --
        --     require("telescope.pickers").new({}, {
        --         prompt_title = "Harpoon",
        --         finder = require("telescope.finders").new_table({
        --             results = file_paths,
        --         }),
        --         previewer = conf.file_previewer({}),
        --         sorter = conf.generic_sorter({}),
        --     }):find()
        -- end

        vim.keymap.set("n","<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,{ desc = "Open harpoon window" })
        -- jump to specific harpoon files --
        for i = 1,4 do
            vim.keymap.set("n", "<leader>"..i..">", function()
                harpoon:list():select(i)
            end)
        end
        -- cycle through harpoon files --
        -- vim.keymap.set("n", "<leader>j", function() harpoon:list():prev() end )
        -- vim.keymap.set("n", "<leader>k", function() harpoon:list():next() end )
    end 
}
    
