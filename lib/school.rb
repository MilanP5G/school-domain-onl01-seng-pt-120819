# code here!
require 'pry'

class School
 attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
   #if @roster.include?(grade)
   # @roster[grade] << name
   #else 
    # @roster[grade] = [name]
    # end
    # if !@roster[grade]
    #   @roster[grade] = []
    # end
    # @roster[grade] << name
    binding.pry
    @roster[grade] ||= []
    @roster[grade] << name 
  end
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    @roster.each { |grade, name| name.sort! }
  end 

end 

