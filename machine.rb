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
    names = ['Tom', 'Ted', 'Joe', 'John', 'Liz', 'Mary', 'Mark', 'Mot', 'Det', 'Oej', 'Nhoj', 'Zil', 'Yram', 'Kram']
    locations = ['SB', 'SB', 'SH', 'SB', 'SH', 'SB', 'SH', 'SB', 'SB', 'SH', 'SB', 'SH', 'SB', 'SH']
    types = ['cutter', 'cutter', 'cutter', 'cutter', 'cutter', 'cutter', 'cutter', 'folder', 'folder', 'folder', 'folder', 'folder', 'folder', 'folder' ]
    ids = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n']

    names.each_with_index do |name, i|
      Machine.create(name, locations[i], types[i], ids[i])
    end
  end
end
