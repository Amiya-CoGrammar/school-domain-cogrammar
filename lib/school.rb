class School
  attr_reader :roster


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grades)
    @roster[grades]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
  end
end

school = School.new("Test School")

school.add_student("AC Slater", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 10)
