--[===========================[--
   L3BUILD FILE FOR NOTEBEAMER
--]===========================]--

module       = "notebeamer"
ctanzip      = module

uploadconfig = {
  pkg          = "notebeamer",
  version      = "v4.2A 2025-03-18",
  author       = "Mingyu Xia",
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
    Version 4.2A released.
    - Ensure compatibility with the recent integrate of l3graphics to l3kernel.
  ]],
  home         = "https://github.com/myhsia/notebeamer",
  bugtracker   = "https://github.com/myhsia/notebeamer/issues",
  support      = "https://qm.qq.com/q/RGFmHwBecC",
  repository   = "https://github.com/myhsia/notebeamer",
  development  = "https://github.com/myhsia",
  update       = true
}