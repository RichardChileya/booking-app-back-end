require 'rails_helper'

RSpec.describe Booking, type: :model do 
  before :each do 
    @user = User.create(name:'Richard', email:'rico@gmail.com', password:'1234567', role:1)
    @booking = Booking.create(user_id: 1, vehicle_id: 1, pickup_date:'2023-03-03', return_date:'2023-03-10')
  end

  context 'Test validation' do 
    it 'name should be present' do 
      @booking.id = nil
      expect(@booking).to_not be_valid
    end

    it 'should not be nil' do 
      @booking.user_id = @user.id 
      expect(@booking).to_not be_valid
    end

    it 'user should be owner of the first booking' do 
      @booking.user_id = @user.id 
      expect(@booking.user_id).to eq (@user.id)
    end
    
   # context line 
  end
  # Rspec line
end
