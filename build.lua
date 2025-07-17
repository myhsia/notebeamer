--[==========================================[--
          L3BUILD FILE FOR NOTEBEAMER
      Once Pushed With This File Modified
        A New Release Will Be Published
--]==========================================]--

--[==========================================[--
               Basic Information
             Do Check Before Push
--]==========================================]--

module        = "notebeamer"
version       = "v4.3A"
date          = "2025-07-17"
maintainer    = "Mingyu Xia"
uploader      = "Mingyu Xia"
maintainid    = "myhsia"
email         = "myhsia@outlook.com"
repository    = "https://github.com/" .. maintainid .. "/" .. module
announcement  = [[Version 4.3A released.
- Updated `build.lua`]]
summary       = "Package for printing slides on note pages"
description   = "The notebeamer package provides an easy way to print slides on note pages quickly, developed by expl3 based on TikZ."

--[==========================================[--
          Build, Pack, Tag, and Upload
         Do not Modify Unless Necessary
--]==========================================]--

ctanzip       = module
cleanfiles    = {"*log", "*.pdf", "*.zip", "*.curlopt"}
excludefiles  = {"*~"}
textfiles     = {"*.md", "LICENSE", "*.lua"}
typesetcmds   = "\\AtBeginDocument\\DisableImplementation"
typesetexe    = "latexmk -pdf"
uploadconfig  = {
  pkg          = module,
  version      = version .. " " .. date,
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
function update_tag(file, content, tagname, tagdate)
  tagname = version
  tagdate = date
  if string.match(file, "%.dtx$") then
    content = string.gsub(content,
      "\\ProvidesExplPackage {" .. module .. "} %{[^}]+%} %{[^}]+%}[\r\n%s]*%{[^}]+%}",
      "\\ProvidesExplPackage {" .. module .. "} {" .. tagdate .. "} {" .. tagname .. "}\n  {" .. summary .. "}")
    content = string.gsub(content,
      "\\date{Released %d+%-%d+%-%d+\\quad \\texttt{v([%d%.A-Z]+)}}",
      "\\date{Released " .. tagdate .. "\\quad \\texttt{" .. tagname .. "}}")
  end
  return content
end

--[== "Hacks" to `l3build` | Do not Modify ==]--

function docinit_hook()
  cp("*.md", unpackdir, currentdir)
  for _,i in ipairs(installfiles) do
    errorlevel = cp(i, unpackdir, typesetdir)
  end
  return 0
end
function tex(file,dir,cmd)
  dir = dir or "."
  cmd = cmd or typesetexe
  if os_type == "windows" then
    return run(dir, cmd .. " -usepretex=\"" .. typesetcmds .. "' -e '$makeindex = q/makeindex -s " .. indexstyle .. " %O %S/\" " .. file)
  else
    return run(dir, cmd .. " -usepretex='" .. typesetcmds .. "' -e '$makeindex = q/makeindex -s " .. indexstyle .. " %O %S/' " .. file)
  end
end
