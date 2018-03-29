require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index

  end

  post '/submitted' do
    erb :released
  end
end

class Machine
  attr_accessor :name, :location, :type
  @@all = []

  def self.all
    @@all
  end

  def self.create(n, l, t)
    m = Machine.new
    m.name = n
    m.location = l
    m.type = t
    @@all << m
  end

  def self.populate
    names = ['Tom', 'Ted', 'Joe', 'John', 'Liz', 'Mary', 'Mark', 'Mot', 'Det', 'Oej', 'Nhoj', 'Zil', 'Yram', 'Kram']
    locations = ['SB', 'SB', 'SH', 'SB', 'SH', 'SB', 'SH', 'SB', 'SB', 'SH', 'SB', 'SH', 'SB', 'SH']
    types = ['cutter', 'cutter', 'cutter', 'cutter', 'cutter', 'cutter', 'cutter', 'folder', 'folder', 'folder', 'folder', 'folder', 'folder', 'folder' ]

    names.each_with_index do |name, i|
      Machine.create(name, locations[i], types[i])
    end
  end
end
