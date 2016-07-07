require('rspec')
require('email_address')

describe('EmailAddress') do
  describe('#email_address') do
    it 'returns the email address of the contact' do
      test_email_address = EmailAddress.new({:email_address=> 'cstokka@chinaconstructionbank.org', :type=> 'corporate'})
    end
  end
end
