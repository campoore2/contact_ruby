class Contact
  @@contacts = []

  attr_accessor(:first_name, :last_name, :job_title, :company, :mailing_address, :phone_number, :email_address)

  define_method(:initialize) do |identifiers|
    @first_name = identifiers.fetch(:first_name)
    @last_name = identifiers.fetch(:last_name)
    @job_title = identifiers.fetch(:job_title)
    @company = identifiers.fetch(:company)
    @email_address = []
    @mailing_address = []
    @phone_number = []
  end

  define_method(:add_email_address) do |email_address|
    @email_address.push(email_address)
  end

  define_method(:add_mailing_address) do |mailing_address|
    @mailing_address.push(mailing_address)
  end

  define_method(:add_phone_number) do |phone_number|
    @phone_number.push(phone_number)
  end
end
