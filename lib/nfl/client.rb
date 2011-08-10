module NFL
  class Client < API
    require 'nfl/client/scores'
    require 'nfl/client/teams'
    require 'nfl/client/players'
    require 'nfl/client/standings'
    require 'nfl/client/games'

    alias :api_endpoint :endpoint

    include NFL::Client::Scores
    include NFL::Client::Teams
    include NFL::Client::Players
    include NFL::Client::Standings
    include NFL::Client::Games
  end
end
