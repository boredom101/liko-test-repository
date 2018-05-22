local path, trigger = (...)
local triggerData = {select(3,...)}

local term = require("terminal")

local PATH = term.getPATH()
local PKGProgramsPath = path.."Programs/;"

if trigger == "enable" then
  PATH = PATH..PKGProgramsPath
  term.setPATH(PATH)
elseif trigger == "disable" then
  PATH = PATH:gsub(PKGProgramsPath,"")
  term.setPATH(PATH)
elseif trigger == "install" then
  fs.move(path.."Misc/xshell.lua", "C:/Libraries/parser/languages/")
elseif trigger == "remove" then
  fs.remove("C:/Libraries/parser/languages/xshell.lua")
end
