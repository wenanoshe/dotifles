local present, project = pcall(require, "project_nvim")

if not present then
  return
end

-- require('telescope').load_extension('projects')

local options = {}

project.setup(options)
