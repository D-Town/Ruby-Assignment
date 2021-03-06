class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  rules = {"R" => "S", "S" => "P", "P" => "R"}

  if rules[m2] == m1  # check what 2nd player's strategy beats, and if that's what 1st player used then
    1   # ...2nd player wins
  else
    0   # 1st player has winning strategy or wins by default when strategies are the same
  end
end

def rps_game_winner(game) # Game is an array of arrays.
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless game[0][1] =~ /R|P|S/ and game[1][1] =~ /R|P|S/
  game[rps_result(game[0][1], game[1][1])]  # return name & strategy of winner
end

def rps_tournament_winner(tournament) # Takes test_tournament as input (winner should be ["Richard", "R"])
  begin
    rps_game_winner(tournament)
  rescue NoSuchStrategyError
    rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
  rescue WrongNumberOfPlayersError
    puts "Error: wrong number of players... how on earth did that happen?!?"
  end
end

# test_tourn is an array of arrays that when put into rps_tournament_winner, begins to
# calculate which player will win based on their given moves.
test_tournament = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ], # game[0][1]
        [ ["Richard", "R"],  ["Michael", "S"] ], # game[1][1]
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]

# Test Tournament
print(rps_tournament_winner(test_tournament))
print("\n")
