require 'rails_helper'

describe "API Homepage" do
  it "can navigate to the homepage" do
    Dog.create(breed: "Bulldog")
    Dog.create(breed: "Labrador")
    Dog.create(breed: "Greyhound")

    get '/api/v1/dogs'

    expect(response).to be_successful
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
end
