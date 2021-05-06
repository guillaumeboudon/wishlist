class User < Ohm::Model
  include Shield::Model

  attribute :crypted_password
  attribute :email
  attribute :first_name
  attribute :last_name

  unique :email

  def self.fetch(email)
    with(:email, email)
  end
end
