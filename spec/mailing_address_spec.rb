require('rspec')
require('mailing_address')

describe('MailingAddress') do
  before() do
    MailingAddress.clear()
  end

  describe('#mailing_address') do
    it 'returns the mailing address of the contact' do
      test_mailing_address = MailingAddress.new({:street_address=> '88 Phillip St', :city=> 'Sydney', :state=> 'Australia', :zip=> 'NSW 2000', :type=> 'corporate'})
    end
  end

  describe('#id') do
    it 'returns the id of the phone number' do
      test_mailing_address = MailingAddress.new({:street_address=> '88 Phillip St', :city=> 'Sydney', :state=> 'Australia', :zip=> 'NSW 2000', :type=> 'corporate'})
      test_mailing_address.save()
      expect(test_mailing_address.id()).to(eq(1))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(MailingAddress.all()).to(eq([]))
    end
  end

  describe('#save') do
    it 'adds a mailing_address to the array of saved mailing_addresss' do
      test_mailing_address = MailingAddress.new({:street_address=> '88 Phillip St', :city=> 'Sydney', :state=> 'Australia', :zip=> 'NSW 2000', :type=> 'corporate'})
      test_mailing_address.save()
      expect(MailingAddress.all()).to(eq([test_mailing_address]))
    end
  end


  describe('.find') do
    it 'returns a mailing_address by its id number' do
      test_mailing_address = MailingAddress.new({:street_address=> '88 Phillip St', :city=> 'Sydney', :state=> 'Australia', :zip=> 'NSW 2000', :type=> 'corporate'})
      test_mailing_address.save()
      test_mailing_address2 = MailingAddress.new({:street_address=> '89 Phillip St', :city=> 'Sydney', :state=> 'Australia', :zip=> 'NSW 2000', :type=> 'corporate'})
      test_mailing_address2.save()
      expect(MailingAddress.find(test_mailing_address.id())).to(eq(test_mailing_address))
    end
  end
end
