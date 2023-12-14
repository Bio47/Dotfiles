local M = {}

M.on_attach = function(client, bufnr)
  -- Create a command `:Format` local to the LSP buffer
  local conform = require("conform")
  vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
    conform.format({
      lsp_fallback = true,
      async = false,
      timeout_ms = 1000,
    })
  end, { desc = "Format current buffer with LSP" })

  local opts = { noremap = true, silent = true, buffer = bufnr }
  local nmap = function(keys, func, desc)
    if desc then
      desc = "LSP: " .. desc
    end
    vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
  end
  -- mapkey("<leader>fd", "Lspsaga finder", "n", opts) -- go to definition
  -- mapkey("<leader>gd", "Lspsaga peek_definition", "n", opts) -- peak definition
  -- mapkey("<leader>gD", "Lspsaga goto_definition", "n", opts) -- go to definition
  -- mapkey("<leader>ca", "Lspsaga code_action", "n", opts) -- see available code actions
  -- mapkey("<leader>rn", "Lspsaga rename", "n", opts) -- smart rename
  -- mapkey("<leader>D", "Lspsaga show_line_diagnostics", "n", opts) -- show  diagnostics for line
  -- mapkey("<leader>d", "Lspsaga show_cursor_diagnostics", "n", opts) -- show diagnostics for cursor
  -- mapkey("<leader>pd", "Lspsaga diagnostic_jump_prev", "n", opts) -- jump to prev diagnostic in buffer
  -- mapkey("<leader>nd", "Lspsaga diagnostic_jump_next", "n", opts) -- jump to next diagnostic in buffer
  -- mapkey("K", "Lspsaga hover_doc", "n", opts) -- show documentation for what is under cursor

  nmap("<leader>rn", "<cmd>Lspsaga rename<CR>", "[R]e[n]ame")
  nmap("<leader>ca", "<cmd>Lspsaga code_action<CR>", "[C]ode [A]ction")
  nmap("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
  nmap("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
  nmap("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
  nmap("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
  nmap("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
  nmap("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")

  -- See `:help K` for why this keymap
  nmap("K", "<cmd>Lspsaga hover_doc<CR>", "Hover Documentation")
  nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")

  -- Lesser used LSP functionality
  nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
  nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")
  nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")
  nmap("<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, "[W]orkspace [L]ist Folders")

  if client.name == "pyright" then
    nmap("<leader>oi", "PyrightOrganizeImports", opts) -- organise imports
    nmap("<leader>db", "DapToggleBreakpoint", opts) -- toggle breakpoint
    -- mapkey("<leader>dt", "lua require('dap-python').test_method()", "n", opts) -- run tests
  end
end

M.diagnostic_signs = { Error = " ", Warn = " ", Hint = "󱧤", Info = "" }

return M
