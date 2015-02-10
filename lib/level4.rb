def find_student(name, school)
  school[:students].find {|student| student[:name] == name}
end


def grade_for(name, school)
  school[:students].find {|student| student[:name] == name}[:grade]
end

def find_instructor(name, school)
  school[:instructors].find {|instructor| instructor[:name] == name}
end


def update_subject_for(name, new_subject, school)
  school[:instructors].find {|instructor| instructor[:name] == name}[:subject] = new_subject
end


def add_student(name, grade, school)
  school[:students] << {:name=>name, :grade=>grade}
end


def add_new_property(property, value, school)
  school[property] = value
end