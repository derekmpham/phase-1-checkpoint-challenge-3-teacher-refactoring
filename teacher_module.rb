module TeacherMod
  attr_reader :salary, :target_raise

  def teach_stuff
  	response = "Listen, class, this is how everything works"
  	if self.instance_of?(ApprenticeTeacher)
  	  response += ". *drops crazy knowledge bomb* ... You're welcome."
  	else
  	  response += ", fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
  	end
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
  	response = ""
  	if (self.instance_of?(ApprenticeTeacher) && rating > 80) || (self.instance_of?(SeniorTeacher) && rating > 90)
  	  response = "Yay, I'm a great employee!"
  	  receive_raise(@target_raise)
  	else
  	  response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
  	end
  	response
  end
end