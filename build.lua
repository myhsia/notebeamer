--[==========================================[--
          L3BUILD FILE FOR NOTEBEAMER
      Once Pushed With This File Modified
        A New Release Will Be Published
--]==========================================]--

--[==========================================[--
               Basic Information
             Do Check Before Push
--]==========================================]--

module       = "notebeamer"
version      = "v4.2G 2025-05-27"
maintainer   = "Mingyu Xia"
uploader     = "Mingyu Xia"
maintainid   = "myhsia"
email        = "myhsia@outlook.com"
repository   = "https://github.com/" .. maintainid .. "/" .. module
announcement = [[
Version 4.2G released.
- Updated `build.lua`
- Updated `README.md`
]]
summary      = "Package for printing presentations on notepaper"
description  = [[
The notebeamer package provides an easy way to input slides on note pages quickly, developed by expl3 based on TikZ.
]]

--[==========================================[--
            Pack and Upload To CTAN
         Don't Modify Unless Necessary
--]==========================================]--
ctanzip      = module
excludefiles = {"*~"}
exhibitfiles = {"*.md"}
textfiles    = {"*.md", "LICENSE", "*.lua"}
typesetcmds  = "\\AtBeginDocument{\\csname DisableImplementation\\endcsname}"

uploadconfig = {
  pkg          = module,
  version      = version,
  author       = maintainer,
  uploader     = uploader,
  email        = email,
  summary      = summary,
  description  = description,
  license      = "lppl1.3c",  
  ctanPath     = "/macros/latex/contrib/" .. module,
  announcement = announcement,
  home         = repository,
  bugtracker   = repository .. "/issues",
  support      = repository .. "/issues",
  repository   = repository,
  development  = "https://github.com/" .. maintainid,
  update       = true
}

function unpack(sources, sourcedirs)
  local errorlevel = dep_install(unpackdeps)
  if errorlevel ~= 0 then
    return errorlevel
  end
  errorlevel = bundleunpack(sourcedirs, sources)
  if errorlevel ~= 0 then
    return errorlevel
  end
  for _,i in ipairs(installfiles) do
    errorlevel = cp(i, unpackdir, localdir)
    if errorlevel ~= 0 then
      return errorlevel
    end
  end
  cp("*.md", unpackdir, currentdir)
  return 0
end