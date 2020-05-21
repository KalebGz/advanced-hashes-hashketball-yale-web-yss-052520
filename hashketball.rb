
require 'pry'
# Write your code below game_hash

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(name_input)
  
  points = 0
  
  players = game_hash[:home][:players]
  players.each{|player|
    if(player[:player_name] == name_input)
      points = player[:points]
      # binding.pry
    end
  }
  
  players = game_hash[:away][:players]
  players.each{|player|
    if(player[:player_name] == name_input)
      points = player[:points]
      # binding.pry
    end
  }
  points
end


def shoe_size(name_input)
  
  shoe = 0
  
  players = game_hash[:home][:players]
  players.each{|player|
    if(player[:player_name] == name_input)
      shoe = player[:shoe]
      # binding.pry
    end
  }
  
  players = game_hash[:away][:players]
  players.each{|player|
    if(player[:player_name] == name_input)
      shoe = player[:shoe]
      # binding.pry
    end
  }
  shoe
end


def team_colors(name_input)
  
if(game_hash[:home][:team_name] == name_input)
  return game_hash[:home][:colors]
else
  return game_hash[:away][:colors]
end
end

def team_colors(name_input)
  
if(game_hash[:home][:team_name] == name_input)
  return game_hash[:home][:colors]
else
  return game_hash[:away][:colors]
end
end

def team_names
  
  teams = []
  
  teams.push(game_hash[:home][:team_name])
  teams.push(game_hash[:away][:team_name])
  teams
end

def player_numbers(name_input)
  
  numbers = []
  
    if(name_input == "Brooklyn Nets")
      players = game_hash[:home][:players]
    else
      players = game_hash[:away][:players]
    end
    
    players.each{|player|
      numbers.push(player[:number])
    }
  numbers
end

def player_stats(name_input)
    
  stats = {}
  players = game_hash[:home][:players]
  players.each{|player|
    if(player[:player_name] == name_input)
      stats = player
    end
  }
  
  players = game_hash[:away][:players]
  players.each{|player|
    if(player[:player_name] == name_input)
      stats = player
    end
  }
  
  stats
end


def big_shoe_rebounds
    
  person = {}
  max_size = -1
  players = game_hash[:home][:players]
  players.each{|player|
    if(player[:shoe] > max_size)
      max_size = player[:shoe]
      person = player
    end
  }
  
  players = game_hash[:away][:players]
  players.each{|player|
    if(player[:shoe] > max_size)
      max_size = player[:shoe]
      person = player
    end
  }
  # binding.pry
  person[:rebounds]
end

#     it 'returns the number of rebounds of the player with the biggest shoe size' do
#       expect(big_shoe_rebounds).to eq(11)
#     end

#   end

# end
