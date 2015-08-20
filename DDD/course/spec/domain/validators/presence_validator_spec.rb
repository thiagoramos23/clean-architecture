require_relative '../../../domain/validators/presence_validator.rb'

RSpec.describe PresenceValidator do

  it "verifies field is valid" do
    validator = PresenceValidator.new(:name)
    expect(validator.validate).to be_truthy
  end

  it "verifies field is not valid because it's nil" do
    name = nil
    validator = PresenceValidator.new(name)
    expect(validator.validate).to be_falsey
  end

  it "invalid empty field" do
    name = ''
    validator = PresenceValidator.new(name)
    expect(validator.validate).to be_falsey
  end
end
