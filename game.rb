module MathGame
    class Game 

        def initialize
            @players = []
            @players << Player.new << Player.new
            @game_over = false
            @current_players = 2
        end

        def start
            puts "lol are u ready?"
            current_player_counter = 0
        end

        def turn
            puts "-----okay, switch-----"
            current_question = Question.new
            puts "#{player.name}: #{current_question.question}"
            @answer = gets.chomp
            if current_player.correct? @answer
                puts "#{player.name}: oh wow you got it right!"
            else
                player.cut_hp
                puts "#{player.name}: lol aw man"
            end
        end
        while (!@game_over) do
            current_player = @players[current_player_counter]
            next_player_counter = (current_player_counter + 1) % @current_players
            next_player = @players[next_player_counter]
            Turn.new(current_player)
            puts Player.points(@players)
            if (current_player.life === 0)
                @game_over = true
                puts "#{next_player.name} wins with a score of #{next_player.life}/3"
            end
            current_player_counter = next_player_counter
            puts "its over, stop playing"
        end
    end
end
