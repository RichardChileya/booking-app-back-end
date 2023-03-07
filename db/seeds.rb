# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Users Table sample Data
User.create(name:'Richard', email:'rico@gmail.com', password:'1234567', role:0)
User.create(name:'Tash', email:'Tash@gmail.com', password:'password', role:0)
User.create(name:'Reccillah', email:'Reci@gmail.com', password:'password8', role:1)
User.create(name:'Mary', email:'mary@gmail.com', password:'password12', role:1)
User.create(name:'Sam', email:'sam@gmail.com', password:'code123', role:1)

# Bookings Data
Booking.create(user_id:1, vehicle_id:1, pickup_date:'2023-03-07', return_date:'2023-03-10')
Booking.create(user_id:2, vehicle_id:3, pickup_date:'2023-03-10', return_date:'2023-03-15')
Booking.create(user_id:3, vehicle_id:2, pickup_date:'2023-03-14', return_date:'2023-03-28')
Booking.create(user_id:4, vehicle_id:5, pickup_date:'2023-03-09', return_date:'2023-04-01')
Booking.create(user_id:5, vehicle_id:4, pickup_date:'2023-03-11', return_date:'2023-03-19')

# Vehicles Data
Vehicle.create(name:'BMW', image:'https://hips.hearstapps.com/hmg-prod/images/2020-bmw-228i-xdrive-gran-coupe-1617522824.jpeg', model:'2021-M-Series', daily_price:350.10, description:'A neat BMW with low gas consuption', available:false, user_id:1,)
Vehicle.create(name:'Porche', image:'https://static.theceomagazine.net/wp-content/uploads/2018/09/12091501/porsche.jpg', model:'2019-SUV', daily_price:700.10, description:'A neat Porche SUV with low gas consuption', available:1, user_id:1,)
Vehicle.create(name:'Range-Rover', image:'https://vanguardluxuryrentals.com/wp-content/uploads/2019/05/BEN00498-1.jpg', model:'2020-Range-Rover', daily_price:700.10, description:'A luxurious range-rover SUV for elegant events', available:true, user_id:2,)
Vehicle.create(name:'Audi Q5', image:'https://www.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/99-audi-q5-sportback-2020-official-hero-front.jpg', model:'2023-SUV ', daily_price:600.10, description:'Go anywhere with this Audi Q5. It is an Automatic Drive Car with a fuel consumption rate of 2.0.  The Q5 has a mileage of 13.47 kmpl', available:true, user_id:3,)
Vehicle.create(name:'Nissan Rogue',image:'https://images.cars.com/cldstatic/wp-content/uploads/nissan-rogue-platinum-2021-06-exterior-front-angle-silver-suv-scaled.jpg', model:'2023-SUV', daily_price:6500.10, description:'Drive this  2023 Nissan Rogue with a five-passenger. A luxuarious are powered by a 1.5-liter turbocharged three-cylinder engine (201 horsepower, 225 lb-ft of torque) mated to a continuously variable automatic transmission', available:true, user_id:5,)
Vehicle.create(name:'Ford Ranger', image:'https://media.ed.edmunds-media.com/ford/ranger/2021/oem/2021_ford_ranger_crew-cab-pickup_lariat_fq_oem_1_1600.jpg', model:'2023-SUV', daily_price:300.10, description:'Ford Ranger! With its powerful engine, spacious interior, and top-of-the-line safety features, this SUV is the perfect choice for anyone who loves to hit the road and explore the great outdoors. great for weekend camping trips or just need a reliable vehicle for your daily commute, the Ford Ranger has everything you need  in comfort and style.', available:true, user_id:4,)



