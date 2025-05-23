return {
  {
    "saghen/blink.cmp",
    ---@param _ any
    ---@param opts blink.cmp.Config
    opts = function(_, opts)
      opts.completion = opts.completion or {}
      opts.completion.ghost_text.enabled = true -- Whether to show ghost text or not
      opts.sources.default = { "lsp", "path", "snippets", "buffer" }

      -- Adapted from the default blink LSP configuration: https://github.com/Saghen/blink.cmp/blob/9f32ef5c3bb44f943238bbcde0c467936475f177/lua/blink/cmp/config/sources.lua#L63
      opts.sources.providers.lsp = {
        name = "LSP",
        module = "blink.cmp.sources.lsp",
        -- Filter out 'text' items from the LSP provider (use 'buffer' provider for that).
        transform_items = function(_, items)
          for _, item in ipairs(items) do
            if item.labelDetails and item.labelDetails.description and item.labelDetails.description == "Amazon Q" then
              item.score_offset = 1000
            end
            if item.kind == require("blink.cmp.types").CompletionItemKind.Snippet then
              item.score_offset = item.score_offset - 3
            end
          end
          return vim.tbl_filter(function(item)
            return item.kind ~= require("blink.cmp.types").CompletionItemKind.Text
          end, items)
        end,

        async = true, -- Show partial results while waiting for all providers.
        timeout_ms = 200, -- Maximum time to wait before showing partial results.
        min_keyword_length = 0, -- Minimum characters that trigger the provider.
      }
    end,
  },
}
