function csv_to_markdown()
    local csv_path = vim.fn.input("Enter CSV file path: ")
    if csv_path ~= "" then
        local home_dir = vim.fn.expand('$HOME')
        local script_path = home_dir .. '/.dotfiles/csv_to_markdown_table.py'
        local command = string.format('python3 %s %s', script_path, csv_path)
        
        -- Capture the standard output as a list of strings
        local output_content = vim.fn.systemlist(command)

        -- Insert the content into the current buffer
        vim.api.nvim_put(output_content, 'l', true, true)
    else
        print("CSV file path cannot be empty.")
    end
end

-- Create a command and key mapping
vim.cmd([[
    command! CsvToMarkdown lua csv_to_markdown()
    nnoremap <Leader>mt :CsvToMarkdown<CR>
]])

