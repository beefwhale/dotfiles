return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',

	config = function()
		-- install parsers -- 
		require('nvim-treesitter').install {
			'rust',
			'javascript',
			'typescript',
			'c',
			'cpp',
			'python',
		}

		-- auto highlighting --
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "*",
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end
}



