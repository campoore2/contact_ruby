require('rspec')
require('email_address')

describe('EmailAddress') do
  before() do
    EmailAddress.clear()
  end
  describe('#email_address') do
    it 'returns the email address of the contact' do
      test_email_address = EmailAddress.new({:email_address=> 'cstokka@chinaconstructionbank.org', :type=> 'corporate'})
    end
  end

  describe('#id') do
    it 'returns the id of the email address' do
      test_email_address = EmailAddress.new({:email_address=> 'cstokka@chinaconstructionbank.org', :type=> 'corporate'})
      test_email_address.save()
      expect(test_email_address.id()).to(eq(1))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(EmailAddress.all()).to(eq([]))
    end
  end

  describe('#save') do
    it 'adds a email_address to the array of saved email_addresss' do
      test_email_address = EmailAddress.new({:email_address=> 'cstokka@chinaconstructionbank.org', :type=> 'corporate'})
      test_email_address.save()
      expect(EmailAddress.all()).to(eq([test_email_address]))
    end
  end


  describe('.find') do
    it 'returns a email_address by its id number' do
      test_email_address = EmailAddress.new({:email_address=> 'cstokka@chinaconstructionbank.org', :type=> 'corporate'})
      test_email_address.save()
      test_email_address2 = EmailAddress.new({:email_address=> 'cpoore@chinaconstructionbank.org', :type=> 'corporate'})
      test_email_address2.save()
      expect(EmailAddress.find(test_email_address.id())).to(eq(test_email_address))
    end
  end
end
