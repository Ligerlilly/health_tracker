# seeds = file.open("./foods.txt", "r")
# arr = []
# f.each_line do |line|

foods = [
  ["banana", 105],
  ["chicken", 275],
  ["soda", 140],
  ["almonds", 105],
  ["Tea", 0],
  ["potato chips", 200],
  ["rice", 175]
]


foods.each do |a, b|

  Food.create!(
    name: a,
    calories: b
  )

end
