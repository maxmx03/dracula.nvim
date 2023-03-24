if vim.fn.has("nvim-0.8.3") then
	vim.api.nvim_create_autocmd("LspTokenUpdate", {
		callback = function(args)
			local show_unconst_caps = function()
				local token = args.data.token

				if token.type ~= "variable" or token.modifiers.readonly then
					return
				end

				local text =
					vim.api.nvim_buf_get_text(args.buf, token.line, token.start_col, token.line, token.end_col, {})[1]

				if text ~= string.upper(text) then
					return
				end

				vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "@constant")
			end

			local css_property_color = function()
				local client = vim.lsp.get_client_by_id(args.data.client_id)

				if client.name ~= "css-lsp" then
					return
				end

				local token = args.data.token

				if token.type ~= "@property.css" then
					return
				end

				local text =
					vim.api.nvim_buf_get_text(args.buf, token.line, token.start_col, token.line, token.end_col, {})[1]

				if string.sub(text, 1, 1) == "#" or string.sub(text, 1, 1) == ":" then
					vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, "@function")
				end
			end

			show_unconst_caps()
			css_property_color()
		end,
	})
end
