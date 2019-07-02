vehicle_type_1 = VehicleType.create(name: 'Car')
vehicle_type_2 = VehicleType.create(name: 'Truck')
vehicle_type_3 = VehicleType.create(name: 'SUV')

VehicleTypeException.create(vehicle_type_id: vehicle_type_2.id, name: 'tailgate',
  details: 'Verify that the tailgate is not down', message: 'Tailgate is down')
VehicleTypeException.create(vehicle_type_id: vehicle_type_2.id, name: 'emptybed',
  details: 'Verify that the truck bed is empty', message: 'Bed is not empty')
VehicleTypeException.create(vehicle_type_id: vehicle_type_3.id, name: 'rearwiper',
  details: 'Verify that the rear wiper is taped down', message: 'Rear wiper not taped')

vehicle_car = Vehicle.create(vehicle_type_id: vehicle_type_1.id, color: 'black', year: '2016',
  make: 'Audi', model: 'S4', license_plate: 'VADER')
vehicle_truck = Vehicle.create(vehicle_type_id: vehicle_type_2.id, color: 'white', year: '2015',
  make: 'Ford', model: 'F-150', license_plate: 'DV 15J6')
vehicle_suv = Vehicle.create(vehicle_type_id: vehicle_type_3.id, color: 'silver', year: '2012',
  make: 'Caddilac', model: 'Escalade', license_plate: 'SCR MOM')
vehicle_oldcar = Vehicle.create(vehicle_type_id: vehicle_type_1.id, color: 'green', year: '1976',
  make: 'Chevy', model: 'Nova', license_plate: 'XV3 B8R')

account_1 = Account.create(vehicle_id: vehicle_car.id, name: "Vestan Pance", payment_type: "credit card", active: true)
account_2 = Account.create(vehicle_id: vehicle_truck.id, name: "Chris Anthemum", payment_type: "credit card", active: true)
account_3 = Account.create(vehicle_id: vehicle_suv.id, name: "Belle Baller", payment_type: "credit card", active: true)
account_4 = Account.create(vehicle_id: vehicle_oldcar.id, name: "Jimmy Mullet", payment_type: "cash", active: false)
