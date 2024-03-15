--
-- Taken from https://github.com/dotnet/crank/blob/main/src/Microsoft.Crank.Jobs.Wrk/scripts/pipeline.lua
--
init = function(args)
  local r = {}
  local depth = tonumber(args[1]) or 1
  for i=1,depth do
    r[i] = wrk.format()
  end
  req = table.concat(r)
end

request = function()
  return req
end
