function ColorMyPencils(color)
	color = color or "tokyonight-night"
	vim.cmd.colorscheme (color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {  bg = "none" })
end

function WorkingWithClint(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme (color)

  vim.api.nvim_set_hl(1, "Normal")
  vim.api.nvim_set_hl(1, "NormalFloat")
end

ColorMyPencils()

