
local test = {}

function test:evaluation()
    return 999998
end

function test:execution(cfg, data)
  -- Clean up the screen
  wesnoth.clear_messages()
  --wesnoth.message('AI testing for side ' .. wesnoth.current.side)
  --if (not wesnoth.game_config.debug) then
  --  wesnoth.message("***** This option requires debug mode. Activate by typing ':debug' *****")
  --  return
  --end
  local tod = wesnoth.get_time_of_day()
  local side = wesnoth.current.side
  print('Beginning of Turn ' .. wesnoth.current.turn .. ' (' .. tod.name ..') stats')

  print("All recruitable Units")
  -- all recruitable units
  units = wesnoth.sides[side].recruit

  for _, v in pairs(units) do
    print(v)
  end

end

function DeepPrint (e)
  print("Printing..")
    -- if e is a table, we should iterate over its elements
    if type(e) == "table" then
        for k,v in pairs(e) do -- for every element in the table
            print("Key : " .. k)
            DeepPrint(v)       -- recursively repeat the same procedure
        end
    elseif e ~= nil then -- if not, we can just print it
        print("Type of Value : " .. type(e))
    else
        print("Value : NIL")
    end
end

return test
