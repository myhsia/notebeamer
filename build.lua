--[==========================================[--
          L3BUILD FILE FOR NOTEBEAMER
      Once Pushed After This File Modified
        A New Release Will Be Published
--]==========================================]--

--[==========================================[--
               Basic Information
             Do Check Before Push
--]==========================================]--

module       = "notebeamer"
version      = "v4.2E 2025-05-24"
maintainer   = "Mingyu Xia"
uploader     = "Mingyu Xia"
maintainid   = "myhsia"
email        = "myhsia@outlook.com"
repository   = "https://github.com/" .. maintainid .. "/" .. module
announcement = [[
Version 4.2E released.
- Updated the manual.
- `build.lua` is included in the package.
]]
summary      = "Package for printing presentations on notepaper"
description  = [[
  The notebeamer package provides an easy way to input slides on note pages
  quickly, developed by expl3 based on TikZ.
]]

--[==========================================[--
            Pack and Upload To CTAN
         Don't Modify Unless Necessary
--]==========================================]--
textfiles    = {"*.md", "LICENSE", "*.lua"}
excludefiles = {"*~"}
cleanfiles   = {"*.log", "*.pdf", "*.zip", "*.curlopt"}
ctanzip      = module

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