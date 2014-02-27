
require 'sinatra'
require 'csv'

  get '/' do
  @teams = read
  erb :index
end

get '/slammers' do
  @teams = read
  erb :simpson_slammers
end

get '/fire' do
  @teams = read
  erb :flinestone_fire
end

get '/goats' do
  @teams = read
  erb :griffin_goats
end

get '/jets' do
  @teams = read
  erb :jetson_jets
end

get '/first_base' do
  @teams = read
  erb :first_base
end

get '/second_base' do
  @teams = read
  erb :second_base
end

get '/third_base' do
  @teams = read
  erb :third_base
end

get '/shortstop' do
  @teams = read
  erb :shortstop
end

get '/pitcher' do
  @teams = read
  erb :pitcher
end

get '/catcher' do
  @teams = read
  erb :catcher
end

get '/right_field' do
  @teams = read
  erb :right_field
end

get '/left_field' do
  @teams = read
  erb :left_field
end

get '/center_field' do
  @teams = read
  erb :center_field
end


def read
  teams = []
  CSV.foreach('teams.csv', headers: true) do |row|
    teams << row.to_hash
  end
  teams
end
