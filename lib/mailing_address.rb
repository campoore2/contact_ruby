class MailingAddress

  @@mailing_addresses = []

  attr_accessor(:street_address, :city, :state, :zip, :type, :id)

  define_method(:initialize) do |particulars|
    @street_address = particulars.fetch(:street_address)
    @city = particulars.fetch(:city)
    @state = particulars.fetch(:state)
    @zip = particulars.fetch(:zip)
    @type = particulars.fetch(:type)
    @id = @@mailing_addresses.length().+(1)
  end

  define_singleton_method(:all) do
    @@mailing_addresses
  end

  define_method(:save) do
    @@mailing_addresses.push(self)
  end

  define_singleton_method(:clear) do
    @@mailing_addresses = []
  end

  define_singleton_method(:find) do |id|
    found_mailing_address = nil
    @@mailing_addresses.each() do |mailing_address|
      if mailing_address.id().eql?(id)
        found_mailing_address = mailing_address
      end
    end
    found_mailing_address
  end
end
