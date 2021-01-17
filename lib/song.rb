require 'pry'

class Song
  extend Memorable, Findable
  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
