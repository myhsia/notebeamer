--[===========================[--
   L3BUILD FILE FOR NOTEBEAMER
--]===========================]--

module       = "notebeamer"
ctanzip      = module

uploadconfig = {
  pkg          = "notebeamer",
  version      = "v4.2C 2025-03-26",
  author       = "Mingyu Xia",
  uploader     = "Mingyu Xia",
  email        = "myhsia@outlook.com",
  summary      = "Package for printing presentations on notepaper",
  description  = [[
    The notebeamer package provides an easy way to input slides on note pages
    quickly, developed by expl3 based on TikZ.
  ]],
  license      = "lppl1.3c",  
  ctanPath     = "/macros/latex/contrib/notebeamer",
  announcement = [[
    Version 4.2C released.
    - Updated the manual and l3build workflow.
  ]],
  home         = "https://github.com/myhsia/notebeamer",
  bugtracker   = "https://github.com/myhsia/notebeamer/issues",
  support      = "https://qm.qq.com/q/RGFmHwBecC",
  repository   = "https://github.com/myhsia/notebeamer",
  development  = "https://github.com/myhsia",
  update       = true
}