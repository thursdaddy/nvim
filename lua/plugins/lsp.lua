return {
    {
        'neovim/nvim-lspconfig',
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
            'nvimtools/none-ls.nvim',
            {
                'williamboman/mason-lspconfig.nvim',
                dependencies = { 'williamboman/mason.nvim' },
            },
            'alaviss/nim.nvim',
        },
        config = function()
        local lsp_zero = require('lsp-zero')
        lsp_zero.extend_lspconfig()
        require('mason-lspconfig').setup({
                ensure_installed = {
                    'lua_ls',
                    'pyright',
                    'tsserver',
                    'terraformls',
                    'ansiblels',
                    'marksman',
                    'nil_ls',
                    'taplo',
                    'gopls',
                    'yamlls',
                    'jsonls',
                    'dockerls',
                },
                handlers = {
                    lsp_zero.default_setup,
                },
            })
        end,
    },
    {
        'williamboman/mason.nvim',
        opts = { ui = { border = 'single' } },
    },
    {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        requires = {
            'williamboman/mason.nvim',
        },
        config = function()
            require('mason-tool-installer').setup({
                ensure_installed = {
                    'ansible-lint',
                    'bash-language-server',
                    'prettierd',
                    'black',
                    'isort',
                    'cspell',
                    'shellcheck',
                    'stylua',
                    'tflint',
                    'tfsec',
                    'debugpy',
                },
            })
        end,
    },
}
