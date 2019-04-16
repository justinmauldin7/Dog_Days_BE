require 'rails_helper'

describe "API Homepage" do
  it "can navigate to the homepage" do
    Dog.create(breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg")
    Dog.create(breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_8051.jpg")
    Dog.create(breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_7411.jpg")
    Dog.create(breed: "Beagle", image: "https://images.dog.ceo/breeds/beagle/n02088364_12124.jpg")
    Dog.create(breed: "Pug", image: "https://images.dog.ceo/breeds/pug/n02110958_13439.jpg")
    Dog.create(breed: "Pug", image: "https://images.dog.ceo/breeds/pug/n02110958_14594.jpg")

    get '/api/v1/dogs'

    expect(response).to be_successful
    expect(Dog.count).to eq(6)
  end

  it "can create a dog" do
    breed = "Labrador"
    image = "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg"

    post "/api/v1/dogs", params: { breed: breed, image: image }
    dog = Dog.last

    expect(response).to be_successful
    expect(dog.breed).to eq(breed)
    expect(dog.image).to eq(image)
  end

  it "can delete a dog" do
    dog = Dog.create(breed: "Labrador", image: "https://images.dog.ceo/breeds/labrador/n02099712_6901.jpg")

    expect(Dog.count).to eq(1)

    delete "/api/v1/dogs/#{dog.id}"

    expect(response).to be_successful
    expect(Dog.count).to eq(0)
    expect{Dog.find(dog.id)}.to raise_error(ActiveRecord::RecordNotFound)
  end
end
