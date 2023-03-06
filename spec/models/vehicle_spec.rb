require 'rails_helper'

RSpec.describe Vehicle, type: :model do
	before :each do
		@user = User.create(name:'Richard', email:'rico@gmail.com', password:'1234567', role:1)
		@vehicles = Vehicle.create(name:'Hilux', image:'https://www.shutterstock.com/image-photo/kota-kinabalu-malaysia-jan-1st-260nw-559327324.jpg', model:'2021', daily_price:'300.10', description:'neat hilux with low gas consuption
', available: true, user_id: 1)
	end

	context 'Test for name availability' do
		it 'name should be present' do
			expect(@vehicles.name).to eq('Hilux')	
		end	

		it 'image should be present' do
			expect(@vehicles.image).to eq('https://www.shutterstock.com/image-photo/kota-kinabalu-malaysia-jan-1st-260nw-559327324.jpg')	
		end	

		it 'model should be present' do
			expect(@vehicles.model).to eq('2021')	
		end

		it 'daily_price should be present' do
			expect(@vehicles.daily_price).to eq('300.10')	
		end	
	end
  
end
