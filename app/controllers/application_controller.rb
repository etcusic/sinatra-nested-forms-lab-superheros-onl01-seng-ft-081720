require 'sinatra/base'
require 'pry'
# require_relative '..models/hero.rb'

# class Hero
#     attr_accessor :name, :power, :bio#, :team_name, :team_motto

#     @@all = []

#     def initialize(hash)
#         @name = hash[:name]
#         @power = hash[:power]
#         @bio = hash[:biography]
#         @@all << self
#         binding.pry
#     end

#     def self.all
#         @@all
#     end
# end


class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        # binding.pry
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        # binding.pry
        params[:team][:heroes].each do |hero| 
            # binding.pry
            Hero.new(hero)
        end
        
        @heros = Hero.all
        # binding.pry
        erb :team
    end

end


