require 'rails_helper'

describe "API Homepage" do
  it "can navigate to the homepage" do
    create_list(:dog, 3)

    get '/api/v1/dogs'

    expect(response).to be_successful
  end
end
