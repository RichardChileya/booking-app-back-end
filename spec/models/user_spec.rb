require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'Grace', email: 'grace@gmail.com', password: 'Password@1', role: 1)
  end

  context 'Test validations' do
    it 'checks that the name is present' do
      @user.name = 'Grace'
      expect(@user).to be_valid
    end

    it 'the name should be present' do
      @user.name = ''
      expect(@user).to_not be_valid
    end
  end

  context 'Test associations' do
    it 'has many vehicles' do
      expect(@user).to respond_to(:vehicles)
      expect(@user.vehicles).to be_empty
    end

    it 'has many bookings' do
      expect(@user).to respond_to(:bookings)
      expect(@user.bookings).to be_empty
    end
  end
end
