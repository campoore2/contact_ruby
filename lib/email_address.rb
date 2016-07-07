class EmailAddress

  attr_accessor(:email_address, :type)

  define_method(:initialize) do |info|
    @email_address = info.fetch(:email_address)
    @type = info.fetch(:type)
  end
end
