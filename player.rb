module MathGame
    class Player
        @@current_players = 0


        def initialize
            @@current_players += 1
            @name = "player #{@@current_players}"
            @life = 3
        end

        def cut_hp
            @life -= 1
        end

        def player_points
            "#{name}: #{@life}/3"
        end

        # record score from game file
        def self.points player
            "#{players[0].player_points} vs #{players[1].player_points}"
        end
    end
end
