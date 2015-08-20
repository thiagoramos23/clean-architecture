require_relative "../../domain/lesson.rb"

RSpec.describe Lesson do

  it "is valid" do
    lesson = Lesson.new(name: "Introduction", description: "This is the first class for Ruby")
    expect(lesson).to be_valid
  end
end
