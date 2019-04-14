require 'rails_helper'

describe "API Homepage" do
  it "can navigate to the homepage" do

    get '/api/v1/dogs'

    expect(response).to be_successful
  end
end
