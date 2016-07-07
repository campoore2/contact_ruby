require('rspec')
require('contact')

describe('Contact') do
  describe('#first_name') do
    it 'returns the first name of the contact' do
      test_contact = Contact.new({:first_name=> 'Caleb', :last_name=> 'Stokka', :job_title=> 'CEO', :company=> 'China Construction Bank', :mailing_address=> 'Beijing', :phone_number=> '86-232-543-3982-00', :email_address=> 'cstokka@chinaconstructionbank.org'})
      expect(test_contact.first_name()).to(eq('Caleb'))
    end
  end
end
