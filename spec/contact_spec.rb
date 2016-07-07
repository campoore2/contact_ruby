require('rspec')
require('pry')
require('contact')
require('email_address')
require('mailing_address')

describe('Contact') do
  describe('#first_name') do
    it 'returns the first name of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank'})
      expect(test_contact.first_name()).to(eq('Caleb'))
    end
  end

  describe('#last_name') do
    it 'returns the last name of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank'})
      expect(test_contact.last_name()).to(eq('Stokka'))
    end
  end

  describe('#job_title') do
    it 'returns the job title of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank'})
      expect(test_contact.job_title()).to(eq('CEO'))
    end
  end

  describe('#company') do
    it 'returns the company of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank'})
      expect(test_contact.company()).to(eq('China Construction Bank'))
    end
  end

  describe('#mailing_address') do
    it 'returns the mailing address of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank'})
      expect(test_contact.mailing_address()).to(eq([]))
    end
  end

  describe('#phone_number') do
    it 'returns the phone number of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank'})
      expect(test_contact.phone_number()).to(eq([]))
    end
  end

  describe('#email_addresses') do
    it 'initially returns empty array of email addresses for contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank'})
      expect(test_contact.email_address()).to(eq([]))
    end
  end

  describe('#add_email_address') do
    it 'adds new email address to contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank'})
      test_email_address = EmailAddress.new({:email_address=> 'cstokka@chinaconstructionbank.org', :type=> 'corporate'})
      test_contact.add_email_address(test_email_address)
      expect(test_contact.email_address()).to(eq([test_email_address]))
    end
  end

  describe('#add_mailing_address') do
    it 'adds new mailing address to contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank'})
      test_mailing_address = MailingAddress.new({:street_address=> '88 Phillip St', :city=> 'Sydney', :state=> 'Australia', :zip=> 'NSW 2000', :type=> 'corporate'})
      test_contact.add_mailing_address(test_mailing_address)
      expect(test_contact.mailing_address()).to(eq([test_mailing_address]))
    end
  end

  describe('#add_phone_number') do
    it 'adds new phone number to contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank'})
      test_phone_number = PhoneNumber.new({:phone_number=> '+61 2 8031 6100', :type=> 'corporate'})
      test_contact.add_phone_number(test_phone_number)
      expect(test_contact.phone_number()).to(eq([test_phone_number]))
    end
  end
end
