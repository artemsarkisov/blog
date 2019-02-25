require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe FactoryBot do
  EXCEPTIONS = %w(base_address base_batch bad_shipping_address shipping_method_rate bad_billing_address)
  FactoryBot.factories.each do |factory|
    next if EXCEPTIONS.include?(factory.name.to_s)
    describe "The #{factory.name} factory" do

      it 'is valid' do
        instance = build(factory.name)
        instance.must_be :valid?
      end
    end
  end
end