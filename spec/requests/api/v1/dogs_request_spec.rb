require 'rails_helper'

describe "API Homepage" do
  it "can navigate to the homepage" do
    Dog.create(breed: "Bulldog")
    Dog.create(breed: "Labrador")
    Dog.create(breed: "Greyhound")

    get '/api/v1/dogs'

    expect(response).to be_successful
  end
end
