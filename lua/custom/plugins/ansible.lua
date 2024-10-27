vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = {
    -- Common Ansible file patterns
    '*/playbooks/*.yaml',
    '*/playbooks/*.yml',
    '*playbook*.yaml',
    '*playbook*.yml',
    '*.ansible.yaml',
    '*.ansible.yml',
  },
  callback = function()
    vim.bo.filetype = 'yaml.ansible'
  end,
})

return {}
