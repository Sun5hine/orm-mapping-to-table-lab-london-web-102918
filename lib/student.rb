class Student

attr_accessor :name, :garde 
attr_reader :id 

def initialize(name, grade, id=nil)
  @name = name 
  @grade = grade 
  @id = id 
end 

def self.create_table
  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
    id Integer PRIMARY KEY,
    name TEXT,
    grade TEXT, 
    )
    SQL 
  DB[:con].execute(sql)
end 

def drop_table
  DROP TABLE students 
  DB[:con].executes(sql)
end

def save
  sql =<<- SQL
  INSERT INTO student (name, garde ) VALUES ( "oy", "9th")
  
 SQL 
  DB[:con].executes(sql, @name)
  @id = DB[:con].execute("whatnot")[0][0]
end 

def create (name: ,grade:)
  student = Student.new("Affi", "10th")
  student.save
  student 
end 

end 