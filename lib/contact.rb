class Contact
  @@contacts = []

  attr_accessor(:first_name, :last_name, :job_title, :company, :mailing_address, :phone_number, :email_address)

  define_method(:initialize) do |identifiers|
    @first_name = identifiers.fetch(:first_name)
    @last_name = identifiers.fetch(:last_name)
    @job_title = identifiers.fetch(:job_title)
    @company = identifiers.fetch(:company)
    @mailing_address = []
    @phone_number = []
    @email_address = []
  end

  define_method(:add_email_address) do |email_address|
    @email_address.push(email_address)
  end
end
