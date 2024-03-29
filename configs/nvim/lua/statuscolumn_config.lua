local builtin = require("statuscol.builtin")
local config = {
  segments = {
    { text = { "%s" }, click = "v:lua.ScSa" },
    -- {
    --   sign = { name = { "Diagnostic" }, maxwidth = 2, auto = true },
    --   click = "v:lua.ScSa"
    -- },
    {
      text = { " ", builtin.lnumfunc, " " },
      condition = { true, builtin.not_empty },
      click = "v:lua.ScLa",
    },
    { text = { "%C " }, click = "v:lua.ScFa", auto = true },
    -- {
    --   sign = { name = { ".*" }, maxwidth = 1, colwidth = 1, auto = false },
    --   click = "v:lua.ScSa"
    -- },
  },
  separator = " ", -- separator between line number and buffer text ("│" or extra " " padding)
  -- Builtin line number string options for ScLn() segment
  thousands = false, -- or line number thousands separator string ("." / ",")
  relculright = true, -- whether to right-align the cursor line number with 'relativenumber' set
  -- Custom line number string options for ScLn() segment
  -- lnumfunc = nil, -- custom function called by ScLn(), should return a string
  -- reeval = false, -- whether or not the string returned by lnumfunc should be reevaluated
  -- ft_ignore = nil,
  -- bt_ignore = nil,
  -- Builtin 'statuscolumn' options
  setopt = true, -- whether to set the 'statuscolumn', providing builtin click actions
  foldfunc = nil,
  -- order = "NsFS", -- order of the fold(F), sign(S), line number(N) and separator(s) segments
  clipckhandlers = {
    Lnum = function(args)
      if args.buton == "l" then
        require("vgit").buffer_hunk_preview()
      end
    end
  },
  -- Click actions
  Lnum = builtin.lnum_click,
  FoldPlus = builtin.foldplus_click,
  FoldMinus = builtin.foldminus_click,
  FoldEmpty = builtin.foldempty_click,
  DapBreakpointRejected = builtin.toggle_breakpoint,
  DapBreakpoint = builtin.toggle_breakpoint,
  DapBreakpointCondition = builtin.toggle_breakpoint,
  DiagnosticSignError = builtin.diagnostic_click,
  DiagnosticSignHint = builtin.diagnostic_click,
  DiagnosticSignInfo = builtin.diagnostic_click,
  DiagnosticSignWarn = builtin.diagnostic_click,
  GitSigns = function() require("vgit").buffer_hunk_preview() end,
  GitSignsTopdelete = function() require("vgit").buffer_hunk_preview() end,
  GitSignsUntracked = function() require("vgit").buffer_hunk_preview() end,
  GitSignsAdd = function() require("vgit").buffer_hunk_preview() end,
  GitSignsChangedelete = function() require("vgit").buffer_hunk_preview() end,
  GitSignsDelete = function() require("vgit").buffer_hunk_preview() end,
}

-- vim.o.statuscolumn = "%@v:lua.ScFa@%C%T%@v:lua.ScLa@%s%T@v:lua.ScNa@%=%{v:lua.ScLn()}%T"
require("statuscol").setup(config)
