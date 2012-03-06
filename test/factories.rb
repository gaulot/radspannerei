Factory.sequence :first_name do |n|
    "Rudolph#{n}"
end

Factory.sequence :last_name do |n|
    "Scharping#{n}"
end

Factory.sequence :order_name do |n|
    "Fahrradrahmen#{n}"
end

Factory.define :order, :class => Order do |o|
  o.article       {|u| Factory.next(:order_name)}
  o.order_number  '1234567890'
  o.note          'Bitte schnell liefern!'
  o.amount        '10 Stk'
  o.deliveryman   'Fahrradgrosshaendler'
  o.filledin_by   'Helmut Kohl'
  o.customer      {|c| c.association(:customer)}
end

Factory.define :customer, :class => Customer do |c|
   c.lastname    {|u| Factory.next(:last_name)}
   c.name        {|u| Factory.next(:first_name)}
   c.street      {|u| "#{u.lastname}_street 12"}
   c.city        {|u| "#{u.lastname}_city"}
   c.phone       "01789101112"
   c.email       {|u| "#{u.lastname}@example.com"}
   c.pkunde      false
end





