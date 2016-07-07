require('rspec')
require('contact')
require('email_address')
require('mailing_address')

describe('Contact') do
  describe('#first_name') do
    it 'returns the first name of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank', :mailing_address=> 'Beijing', :phone_number=> '86-232-543-3982-00', :email_address=> 'cstokka@chinaconstructionbank.org'})
      expect(test_contact.first_name()).to(eq('Caleb'))
    end
  end

  describe('#last_name') do
    it 'returns the last name of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank', :mailing_address=> 'Beijing', :phone_number=> '86-232-543-3982-00', :email_address=> 'cstokka@chinaconstructionbank.org'})
      expect(test_contact.last_name()).to(eq('Stokka'))
    end
  end

  describe('#job_title') do
    it 'returns the job title of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank', :mailing_address=> 'Beijing', :phone_number=> '86-232-543-3982-00', :email_address=> 'cstokka@chinaconstructionbank.org'})
      expect(test_contact.job_title()).to(eq('CEO'))
    end
  end

  describe('#company') do
    it 'returns the company of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank', :mailing_address=> 'Beijing', :phone_number=> '86-232-543-3982-00', :email_address=> 'cstokka@chinaconstructionbank.org'})
      expect(test_contact.company()).to(eq('China Construction Bank'))
    end
  end

  describe('#mailing_address') do
    it 'returns the mailing address of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank', :phone_number=> '86-232-543-3982-00'})
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
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank', :mailing_address=> 'Beijing', :phone_number=> '86-232-543-3982-00'})
      expect(test_contact.email_address()).to(eq([]))
    end
  end
end
