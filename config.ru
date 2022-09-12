require 'sinatra'

class App < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/dice' do
    dice_roll = rand(1..6)
    { roll: dice_roll }.to_json
  end

  get '/add/1/2' do
    sum = 1 + 2
    { result: sum }.to_json
  end
  
end

run App