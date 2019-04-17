require 'rails_helper'

RSpec.describe Dog, type: :model do
  describe 'relationships' do
    it { should belong_to(:user) }
  end
  describe 'validations' do
    it { should validate_presence_of(:breed) }
    it { should validate_presence_of(:image) }
  end
end
