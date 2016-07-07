class PhoneNumber

  attr_accessor(:phone_number, :type)

  define_method(:initialize) do |info|
    @phone_number = info.fetch(:phone_number)
    @type = info.fetch(:type)
  end
end
