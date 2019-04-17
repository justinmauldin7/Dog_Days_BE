require 'rails_helper'

describe "/users" do
  it "can create a user" do
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
  it "can get a single user" do
    user_1 = User.create(name: "Justin", email: "justin@gmail.com", password: "123")

    get "/api/v1/users", params: { email: user_1.email }
    user = User.find_by(email: user_1.email)

    expect(response).to be_successful
    expect(user.name).to eq(user_1.name)
    expect(user.email).to eq(user_1.email)
  end
end
