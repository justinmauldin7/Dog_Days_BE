User.destroy_all
Dog.destroy_all

user_1 = User.create!(name: "Justin", email: "justin@gmail.com", password: "123")

Dog.create(user: user_1, breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg")
Dog.create(user: user_1, breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_8051.jpg")
Dog.create(user: user_1, breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_7411.jpg")
Dog.create(user: user_1, breed: "Beagle", image: "https://images.dog.ceo/breeds/beagle/n02088364_12124.jpg")
Dog.create(user: user_1, breed: "Pug", image: "https://images.dog.ceo/breeds/pug/n02110958_13439.jpg")
Dog.create(user: user_1, breed: "Pug", image: "https://images.dog.ceo/breeds/pug/n02110958_14594.jpg")

p "Created #{User.count} users"
p "Created #{Dog.count} dogs"
