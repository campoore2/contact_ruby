class PhoneNumber

  @@phone_numbers = []

  attr_accessor(:phone_number, :type, :id)

  define_method(:initialize) do |info|
    @phone_number = info.fetch(:phone_number)
    @type = info.fetch(:type)
    @id = @@phone_numbers.length().+(1)
  end

  define_singleton_method(:all) do
    @@phone_numbers
  end

  define_method(:save) do
    @@phone_numbers.push(self)
  end

  define_singleton_method(:clear) do
    @@phone_numbers = []
  end

  define_singleton_method(:find) do |id|
    found_phone_number = nil
    @@phone_numbers.each() do |phone_number|
      if phone_number.id().eql?(id)
        found_phone_number = phone_number
      end
    end
    found_phone_number
  end
end
