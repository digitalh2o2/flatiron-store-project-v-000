User.create(email: "alberto@example.com", password: "please123")
User.create(email: "hector@example.com", password: "please123")
User.create(email: "evankevin@example.com", password: "please123")
User.create(email: "mcgrath@example.com", password: "please123")
User.create(email: "karen@example.com", password: "please123")
User.create(email: "meatball@example.com", password: "please123")
User.create(email: "randyandy@example.com", password: "please123")
User.create(email: "pooman@example.com", password: "please123")
User.create(email: "burgerman@example.com", password: "please123")
User.create(email: "trondollar@example.com", password: "please123")


10.times do 
  Item.create(
    title: Faker::Commerce.product_name, 
    inventory: Faker::Number.number(2), 
    price: Faker::Number.number(4)
  )
  Category.create(title: Faker::Commerce.department)
end

counter = 1
Item.all.each do |item|
  item.category_id = counter
  item.save
  counter += 1
end
