require('rspec')
require('phone_number')

describe('PhoneNumber') do
  describe('#phone_number') do
    it 'returns the phone number of the contact' do
      test_phone_number = PhoneNumber.new({:phone_number=> '+61 2 8031 6100', :type=> 'corporate'})
    end
  end
end
