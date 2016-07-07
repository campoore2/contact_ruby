class Contact
  @@contacts = []

  attr_accessor(:first_name, :last_name, :job_title, :company, :mailing_address, :phone_number, :email_address, :id)

  define_method(:initialize) do |identifiers|
    @first_name = identifiers.fetch(:first_name)
    @last_name = identifiers.fetch(:last_name)
    @job_title = identifiers.fetch(:job_title)
    @company = identifiers.fetch(:company)
    @id = @@contacts.length().+(1)
    @email_address = []
    @mailing_address = []
    @phone_number = []
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:find) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(id)
        found_contact = contact
      end
    end
    found_contact
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
