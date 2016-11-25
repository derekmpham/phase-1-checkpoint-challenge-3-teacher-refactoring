require_relative 'dbc_module'
require_relative 'student'
require_relative 'teacher_module'
require_relative 'apprentice_teacher'

class SeniorTeacher
  include DbcMod
  include TeacherMod
  attr_reader :performance_rating

  def initialize(options={})
    super(options)
    @phase = 3
    @target_raise = 1000
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
