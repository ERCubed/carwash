json.array!(@vehicles) do |vehicle|
  json.partial! "body", :vehicle => vehicle
end