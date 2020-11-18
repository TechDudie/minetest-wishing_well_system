--create and init the item values, note that bigger number is rarer.
value = {}
value["diamond"] = 150
value["gold"] = 200
value["coreglass"] = 125
value["crystalized diamond"] = 50
value["entropy crystal"] = 25
possible = {}
math.randomseed(os.time())
function decide_on_item(item)
  --find the total value count
  total = 0
  for k,v in ipairs(possible) do
    total = total + v
  end
  --get a random item, note that sometimes there isn't an item chosen (on purpose)
  for k,v in ipairs(possible) do
    if math.random() < (v / total) then
      return k
    end
  end
  --last resort: no item
  return ""
end
