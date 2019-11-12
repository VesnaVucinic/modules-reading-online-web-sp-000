require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer 
  #include Dance
  #extend MetaDancing
  # :: This syntax references the parent and child relationship of the nested modules.
  extend FancyDance::ClassMethods
  # extend is used to add functionality to our classes via class methods
  include FancyDance::InstanceMethods
 # include is used to add functionality to our classes via instance methods. The InstanceMethods module inside the FancyDance module contains the methods twirl, jump, pirouette, and take_a_bow, which any instance of the Dancer or Kid class can do.
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
end