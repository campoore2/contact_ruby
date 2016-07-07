class Contact
  @@contacts = []

  attr_accessor(:first_name, :last_name, :job_title, :company, :mailing_address, :phone_number, :email_address)

  define_method(:initialize) do |identifiers|
    @first_name = identifiers.fetch(:first_name)
    @last_name = identifiers.fetch(:last_name)
    @job_title = identifiers.fetch(:job_title)
    @company = identifiers.fetch(:company)
    @mailing_address = identifiers.fetch(:mailing_address)
    @phone_number = identifiers.fetch(:phone_number)
    @email_address = identifiers.fetch(:email_address)
  end
end
