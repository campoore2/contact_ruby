require('rspec')
require('mailing_address')

describe('MailingAddress') do
  describe('#mailing_address') do
    it 'returns the mailing address of the contact' do
      test_mailing_address = MailingAddress.new({:street_address=> '88 Phillip St', :city=> 'Sydney', :state=> 'Australia', :zip=> 'NSW 2000', :type=> 'corporate'})
    end
  end
end
