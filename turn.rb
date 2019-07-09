module MathGame
    class Turn

        def initialize (player)
            puts '-----OKAY, SWITCH-----'
            current_question = Question.new
            puts "#{player.name}: #{current_question.question}"
            @answer = gets.chomp
            if current_question.correct? @answer
                puts "#{player.name}: oh wow you actually got it."
            else
                player.lose_life
                puts "#{player.name}: oops try again!"
            end
        end
    end
end
