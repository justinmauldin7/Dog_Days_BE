require 'rails_helper'

describe "/users" do
  it "can create a dog" do
    name = "Tom"
    email = "whatever@example.com"
    password = "password"
    created_status = 201

    post "/api/v1/users", params: { name: name, email: email, password: password, password_confirmation: password }
    user = User.last

    expect(response.status).to eq(created_status)
    expect(user.name).to eq(name)
    expect(user.email).to eq(email)
  end
end
