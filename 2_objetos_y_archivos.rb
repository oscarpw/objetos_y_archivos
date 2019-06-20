require 'date'
class Course

    attr_reader :start

    def initialize (name, start, finish)
        @name = name
        @start = Date.parse(start)
        @finish = Date.parse(finish)
    end

    def self.read_file(file = 'cursos.txt')
        data = File.open(file,'r').readlines.map(&:chomp)
        course_objects = []

        data.each do |line|
            course_data = line.split(', ')
            course_objects << Course.new(*course_data)
        end
        return course_objects
    end

    def self.start_at(filter = Date.today)
        courses = read_file #self implicit
        courses.select[|course|]


    end
end
Course.read_file
