class EmailAddress

  @@email_addresses = []

  attr_accessor(:email_address, :type, :id)

  define_method(:initialize) do |info|
    @email_address = info.fetch(:email_address)
    @type = info.fetch(:type)
    @id = @@email_addresses.length().+(1)
  end

  define_singleton_method(:all) do
    @@email_addresses
  end

  define_method(:save) do
    @@email_addresses.push(self)
  end

  define_singleton_method(:clear) do
    @@email_addresses = []
  end

  define_singleton_method(:find) do |id|
    found_email_address = nil
    @@email_addresses.each() do |email_address|
      if email_address.id().eql?(id)
        found_email_address = email_address
      end
    end
    found_email_address
  end
end
