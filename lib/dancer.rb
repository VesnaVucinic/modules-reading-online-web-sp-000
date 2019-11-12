require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer 
  #include Dance
  #extend MetaDancing
  # :: This syntax references the parent and child relationship of the nested modules.
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
end