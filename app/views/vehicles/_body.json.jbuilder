json.make vehicle.make
json.model vehicle.model
json.color vehicle.color
json.year vehicle.year
json.vehicle_type vehicle.vehicle_type.name
json.license_plate vehicle.license_plate
json.price number_to_currency(vehicle.vehicle_type.price)