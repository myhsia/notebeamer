--[===========================[--
   L3BUILD FILE FOR NOTEBEAMER
--]===========================]--

module       = "notebeamer"
ctanzip      = module

uploadconfig = {
  pkg          = "notebeamer",
  version      = "v4.1E 2025-03-12",
  author       = "Mingyu Xia; Lijun Guo",
  uploader     = "Mingyu Xia",
  email        = "myhsia@outlook.com",
  summary      = "Package for printing presentations on notepaper",
  description  = [[
    The notebeamer package provides an easy way to input slides on note pages
    quickly, developed by expl3 based on TikZ and l3graphics.
  ]],
  license      = "lppl1.3c",  
  ctanPath     = "/macros/latex/contrib/notebeamer",
  announcement = [[
    Version 3.3E released.

    - Updated the l3build workflow.
  ]],
  home         = "https://github.com/myhsia/notebeamer",
  bugtracker   = "https://github.com/myhsia/notebeamer/issues",
  support      = "https://qm.qq.com/q/RGFmHwBecC",
  repository   = "https://github.com/myhsia/notebeamer",
  development  = "https://github.com/myhsia",
  update       = true
}