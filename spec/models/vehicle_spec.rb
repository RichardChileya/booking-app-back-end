require 'rails_helper'

RSpec.describe Vehicle, type: :model do
	before :each do
		user = User.create(name:'Richard', email:'rico@gmail.com', password:'1234567', role:1)
		@vehicles = Vehicle.create(name:'Hilux', image:'https://www.shutterstock.com/image-photo/kota-kinabalu-malaysia-jan-1st-260nw-559327324.jpg
', model:'2021', daily_price:'300.10', description:'neat hilux with low gas consuption
', available: true, user_id: 1)

		
	end
  
end
