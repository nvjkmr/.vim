return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  opts = {
    provider = "copilot",
    providers = {
      copilot = {
        model = "claude-sonnet-4.5",
        extra_request_body = {
          max_tokens = 8192,
        },
      },
    },
    file_finder = {
      provider = "telescope", -- Use telescope for file finding
    },
    keymaps = {
      toggle = "<leader>ai", -- Toggle Avante with leader+ai
    },
    -- Custom prompts for Rails development
    custom_prompts = {
      {
        name = "Explain Rails Code",
        prompt = "Explain this Rails code snippet in detail, including any Rails-specific patterns or idioms:",
      },
      {
        name = "Generate Rails Model",
        prompt = "Generate a Rails model with appropriate attributes, validations, and associations for:",
      },
      {
        name = "Generate Rails Controller",
        prompt = "Generate a Rails controller with RESTful actions and appropriate before_actions for:",
      },
      {
        name = "Optimize Query",
        prompt = "Optimize this Rails Active Record query to reduce N+1 problems and improve performance:",
      },
      {
        name = "Generate Migration",
        prompt = "Generate a Rails migration to:",
      },
    },
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "zbirenbaum/copilot.lua",

    --- optional dependencies
    "nvim-mini/mini.pick", -- for file_selector provider mini.pick
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
