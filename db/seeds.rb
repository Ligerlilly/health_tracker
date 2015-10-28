# seeds = file.open("./foods.txt", "r")
# arr = []
# f.each_line do |line|

foods = [
  ["banana", 105],
  ["chicken", 275],
  ["soda", 140],
  ["almonds", 105],
  ["tea", 0],
  ["potato chips", 200],
  ["rice", 175]
]

exercises = [
  ["running", 100],
  ["biking", 75],
  ["climbing", 50],
  ["ping pong", 25]
]


foods.each do |a, b|

  Food.create!(
    name: a,
    calories: b
  )

end

exercises.each do |a, b|
  Exercise.create!(
    name: a,
    cals_per_hour: b
  )

end
