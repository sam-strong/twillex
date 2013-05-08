class UserFactory

  def self.create
    params = {name: "Zahid", phone_number: "07777777777", from_currency: "USD", to_currency: "JPY"}
    user = User.create(params)

  end

end