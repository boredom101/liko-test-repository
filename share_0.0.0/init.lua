local path, trigger = (...)
local triggerData = {select(3,...)}

local term = require("terminal")

local PATH = term.getPATH()
local PKGProgramsPath = path.."Programs/;"

print(trigger)

if trigger == "enable" then
  PATH = PATH..PKGProgramsPath
  print(PATH)
  term.setPATH(PATH)
elseif trigger == "disable" then
  PATH = PATH:gsub(PKGProgramsPath,"")
  term.setPATH(PATH)
end
