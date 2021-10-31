puts "🌱 Seeding spices..."

Category.create(name: "Code")
Category.create(name: "Food")
Category.create(name: "Money")
Category.create(name: "Misc")

Todo.create(text: "call mom", category_id: 4)
Todo.create(text: "go to gym", category_id: 4)
Todo.create(text: "pick up children after school", category_id: 4)
Todo.create(text: "build a cool API", category_id: 1)
Todo.create(text: "make a meal", category_id: 2)
Todo.create(text: "go to the bank", category_id: 3)
Todo.create(text: "go to work", category_id: 3)

puts "✅ Done seeding!"
