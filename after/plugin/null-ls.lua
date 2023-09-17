local null_ls = require('null-ls')
null_ls.setup {
    sources = {
        null_ls.builtins.diagnostics.mypy.with({
            extra_args = function()
                local prefix = os.getenv("CONDA_PREFIX")
                local suffix = "/bin/python"
                return { "--python-executable", prefix .. suffix }
            end
        }),
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.diagnostics.flake8,
    }
}

