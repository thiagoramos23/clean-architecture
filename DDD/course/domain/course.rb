require_relative 'lesson.rb'
require_relative 'base.rb'

class Course < Base
  attr_accessor :name

  sef initialize(args = {})

    @name = args[:name]
    @lessons = args[:lessons]
  end

  def total_lessons
    @lessons.size
  end
end
