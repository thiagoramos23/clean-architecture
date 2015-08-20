require_relative '../../domain/course.rb'

RSpec.describe Course do 

  it "is a valid" do
    course = Course.new(name: 'Ruby on Rails')
    expect(course).to be_valid
  end

  it "is invalid without name" do
    course = Course.new(name: '')
    expect(course).to_not be_valid
  end

  it "has classes" do
    course = Course.new(name: 'Ruby', lessons: [Lesson.new, Lesson.new])
    expect(course.total_lessons).to eq(2)
  end
end
