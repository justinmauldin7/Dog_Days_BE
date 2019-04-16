require 'rails_helper'

RSpec.describe Dog, type: :model do
  it { should validate_presence_of(:breed) }
  it { should validate_presence_of(:image) }
end
