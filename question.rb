module MathGame
    class Question

        def initialize
            @first_number = Random.rand(1...21)
            @second_number = Random.rand(1...21)
            @answer = @first_number + @second_number
        end

        def question 
            "if you add #{@first_number} and #{@second_number}, what do you get?"
        end

        def correct?(answer)
            answer == @answer
        end
        
    end
end

