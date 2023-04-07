local M = {}

function M.get_hl(group_name)
	local group = vim.api.nvim_get_hl(0, { name = group_name })

	if type(group) == "table" then
		if type(group.link) == "string" then
			return M.get_hl(group.link)
		end

		return group
	end

	return nil
end

function M.update_highlight_groups(groups)
	if not groups then
		return
	end

	for group_name, val in pairs(groups) do
		local group_val = M.get_hl(group_name)

		if type(group_val) == "table" then
			local value = vim.tbl_extend("force", group_val, val)

			vim.api.nvim_set_hl(0, group_name, value)
		end
	end
end

return M
