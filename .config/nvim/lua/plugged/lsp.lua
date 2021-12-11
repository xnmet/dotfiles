-- local lspconfig = require('lspconfig')

local lsp_installer = require('nvim-lsp-installer')

-- vim.api.
--
--

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        -- signs = false,
    }
)

-- vim.fn.timer_start(1000, function()
    lsp_installer.on_server_ready(function(server)
        local opts = {}
        -- (optional) Customize the options passed to the server
        --     opts.root_dir = function() ... end
        -- end
        -- if server.name == "tsserver" then

        server:setup(opts)
    end)
  -- end
-- )
