local jdtls_bin = vim.fn.stdpath("data") .. "/mason/bin/jdtls"

require('jdtls').start_or_attach({
    cmd = { jdtls_bin },
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
})