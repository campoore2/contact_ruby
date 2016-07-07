require('rspec')
require('phone_number')

describe('PhoneNumber') do
  before() do
    PhoneNumber.clear()
  end
  describe('#phone_number') do
    it 'returns the phone number of the contact' do
      test_phone_number = PhoneNumber.new({:phone_number=> '+61 2 8031 6100', :type=> 'corporate'})
    end
  end

  describe('#id') do
    it 'returns the id of the phone number' do
      test_phone_number = PhoneNumber.new({:phone_number=> '+61 2 8031 6100', :type=> 'corporate'})
      test_phone_number.save()
      expect(test_phone_number.id()).to(eq(1))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(PhoneNumber.all()).to(eq([]))
    end
  end

  describe('#save') do
    it 'adds a phone_number to the array of saved phone_numbers' do
      test_phone_number = PhoneNumber.new({:phone_number=> '+61 2 8031 6100', :type=> 'corporate'})
      test_phone_number.save()
      expect(PhoneNumber.all()).to(eq([test_phone_number]))
    end
  end


  describe('.find') do
    it 'returns a phone_number by its id number' do
      test_phone_number = PhoneNumber.new({:phone_number=> '+61 2 8031 6100', :type=> 'corporate'})
      test_phone_number.save()
      test_phone_number2 = PhoneNumber.new({:phone_number=> '+61 2 8032 6100', :type=> 'corporate'})
      test_phone_number2.save()
      expect(PhoneNumber.find(test_phone_number.id())).to(eq(test_phone_number))
    end
  end
end
