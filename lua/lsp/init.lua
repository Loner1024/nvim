local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("lsp.lsp-installer")
require("lsp.handlers").setup()
require('go').config.update_tool('quicktype', function(tool)
    tool.pkg_mgr = 'yarn'
end)
-- setup nvim-go
require('go').setup({
  notify = false,
})

-- setup lsp client
require('lspconfig').gopls.setup({})
