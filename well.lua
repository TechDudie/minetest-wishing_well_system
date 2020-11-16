--unfinished
--create and init the item values, note that bigger number is rarer.
value = {}
value["diamond"] = 150
value["gold"] = 200
value["coreglass"] = 125
value["crystalized diamond"] = 50
value["entropy crystal"] = 25
possible = {}
math.randomseed(os.time())
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
function decide_on_item(item)
  --find the matching item
  for k,v in ipairs(value) do
    if k == item then
      --make note of the item value
      itemval = v
      table.insert(possible,k)
    end
  end
  total = 0
  for k,v in ipairs(possible) do
    total = total + v
  end
end
