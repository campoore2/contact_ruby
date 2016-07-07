class MailingAddress

  attr_accessor(:street_address, :city, :state, :zip, :type)

  define_method(:initialize) do |particulars|
    @street_address = particulars.fetch(:street_address)
    @city = particulars.fetch(:city)
    @state = particulars.fetch(:state)
    @zip = particulars.fetch(:zip)
    @type = particulars.fetch(:type)
  end
end
