Rails.application.routes.draw do

  root :to => 'team#team'
  get '/team' => 'team#team'
  get '/player' => 'player#player'
 
end
