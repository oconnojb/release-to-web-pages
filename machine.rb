require_relative 'config/environment'

class Machine
  attr_accessor :name, :location, :type, :id
  @@all = []

  def self.all
    @@all
  end

  def self.create(n, l, t, i)
    m = Machine.new
    m.name = n
    m.location = l
    m.type = t
    m.id = i
    @@all << m
  end

  def self.populate
    names = ['Tom', 'Ted', 'Joe', 'John', 'Liz', 'Mary', 'Mark', 'Tommy']
    locations = ['SB', 'SB', 'SB', 'SB', 'SH', 'SH', 'SH', 'SH']
    types = ['cutter', 'folder', 'cutter', 'folder', 'cutter', 'folder', 'cutter', 'folder']
    ids = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']

    names.each_with_index do |name, i|
      Machine.create(name, locations[i], types[i], ids[i])
    end
  end
end
