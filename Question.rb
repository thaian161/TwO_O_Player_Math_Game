class Question
  attr_reader :result

    @num1 = 1 + rand(20) #generate random num from 1 to 20
    @num2 = 1 + rand(20)
    @boolean = true
    @result = @num1 + @num2
  end

  def create_question
    puts "What is #{num1} + #{num2}?"
  end

end