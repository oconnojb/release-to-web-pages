require_relative 'config/environment'

class Machine
  attr_accessor :name, :location, :type, :id
  @@all = []

  def self.all
    @@all
  end

  def self.create(name, location, type, id)
    m = Machine.new
    m.name = name
    m.location = location
    m.type = type
    m.id = id
    @@all << m
  end

  def self.populate
    names = ['Tom', 'Ted', 'Joe', 'John', 'Liz', 'Mary', 'Mark', 'Tommy']
    locations = ['SB', 'SB', 'SB', 'SB', 'SH', 'SH', 'SH', 'SH']
    types = ['cutter', 'folder', 'cutter', 'folder', 'cutter', 'folder', 'cutter', 'folder']
    ids = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']

    names.each_with_index do |name, index|
      Machine.create(name, locations[index], types[index], ids[index])
    end
  end
end
