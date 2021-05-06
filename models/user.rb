class User < Ohm::Model
  attribute :email
  attribute :first_name
  attribute :last_name

  unique :email
end
