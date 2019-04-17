require 'rails_helper'

describe "/dogs" do
  it "can return to a users dogs" do
    user_1 = User.create(name: "Justin", email: "justin@gmail.com", password: "123")

    Dog.create(user: user_1, breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg")
    Dog.create(user: user_1, breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_8051.jpg")
    Dog.create(user: user_1, breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_7411.jpg")
    Dog.create(user: user_1, breed: "Beagle", image: "https://images.dog.ceo/breeds/beagle/n02088364_12124.jpg")
    Dog.create(user: user_1, breed: "Pug", image: "https://images.dog.ceo/breeds/pug/n02110958_13439.jpg")
    Dog.create(user: user_1, breed: "Pug", image: "https://images.dog.ceo/breeds/pug/n02110958_14594.jpg")

    get '/api/v1/dogs' , params: { user_id: user_1.id }

    expect(response).to be_successful
    expect(Dog.count).to eq(6)
  end

  it "can create a dog" do
    user_1 = User.create(name: "Justin", email: "justin@gmail.com", password: "123")
    breed = "Labrador"
    image = "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg"

    post "/api/v1/dogs", params: { user_id: user_1.id, breed: breed, image: image }
    dog = Dog.last

    expect(response).to be_successful
    expect(dog.user).to eq(user_1)
    expect(dog.breed).to eq(breed)
    expect(dog.image).to eq(image)
  end

  it "can delete a dog" do
    user_1 = User.create(name: "Justin", email: "justin@gmail.com", password: "123")
    dog = Dog.create(user: user_1, breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg")

    expect(Dog.count).to eq(1)

    delete "/api/v1/dogs/#{dog.id}", params: { user_id: user_1.id }

    expect(response).to be_successful
    expect(Dog.count).to eq(0)
    expect{Dog.find(dog.id)}.to raise_error(ActiveRecord::RecordNotFound)
  end
end
