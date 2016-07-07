require('rspec')
require('contact')

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

  
end
