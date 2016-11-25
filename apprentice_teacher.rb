require_relative 'dbc_module'
require_relative 'student'
require_relative 'teacher_module'
require_relative 'senior_teacher'

class ApprenticeTeacher
  include DbcMod
  include TeacherMod
  attr_reader :salary, :target_raise

  def initialize(options={})
    super(options)
    @phase = 3
    @target_raise = 800
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
