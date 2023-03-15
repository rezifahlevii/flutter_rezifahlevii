class Course {
  String title;
  String description;

  Course(this.title, this.description);
}

class Student {
  String name;
  String className;
  List<Course> courses = [];

  Student(this.name, this.className);

  void addCourse(Course course) {
    courses.add(course);
  }

  void removeCourse(Course course) {
    courses.remove(course);
  }

  void viewCourses() {
    print("Courses for ${name}:");
    for (var course in courses) {
      print("${course.title} - ${course.description}");
    }
  }
}