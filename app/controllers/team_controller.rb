class TeamController < ApplicationController

		def nhl
		@league = params[:name] #IRL: params[:something]
		url = "http://api.sportradar.us/nhl-t3/league/hierarchy.json?api_key=gumrvefjb65pf4mukttw43au"
		nhl_info = HTTParty.get url;
		
			@conferences = nhl_info['conferences']
			@league = nhl_info['league']
			@name = nhl_info['name']
		

	end

end
