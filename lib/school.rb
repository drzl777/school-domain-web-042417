# code here!

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :roster, :name

  def add_student(name, grade)
    @roster.include?(grade) ? roster[grade] << name : roster[grade] = [name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each {|grade, grade_roster| sorted[grade] = grade_roster.sort}
    sorted
  end
  

end
