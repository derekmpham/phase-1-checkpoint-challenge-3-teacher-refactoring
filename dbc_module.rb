module DbcMod

  attr_reader :age, :phase
  attr_accessor :name

  def initialize(options = {})
    @phase = 0
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  def offer_high_five
    "High five!"
  end

  def set_phase(num)
    response = ""
    if self.instance_of?(Student)
      if num == @phase
        response += "I'm doing phase #{@phase} again because "
      	response += "I put my learning first. I'm gonna rock it!"
      else
      	response = "Oooh, phase #{num}. I hope I'm ready!"
      end
      @phase = num
      response
    else
      @phase = num
      "Cool, I've always wanted to teach phase #{num}!"
    end
  end
end