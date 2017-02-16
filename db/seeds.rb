# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

StudentCourse.destroy_all
TeacherCourse.destroy_all
Feedback.destroy_all
Submission.destroy_all
Student.destroy_all
Assignment.destroy_all
Course.destroy_all
Teacher.destroy_all

student_data = [{
  first_name: "Ivana",
  last_name: "Tudor",
  user_name: "ivyT",
  email: "ivyT@google.com",
  password: "aaaaa6",
  slack: "ivyT",
  github: "image",
  linkedin: "IvyT"
  }, {
    first_name: "Amanda",
    last_name: "Hodgkins",
    user_name: "AmandaH",
    email: "Amandahugs@google.com",
    password: "aaaaa6",
    slack: "AmandaH",
    github: "image",
    linkedin: "AHugunkys"
  }, {
    first_name: "George",
    last_name: "Jetson",
    user_name: "MeetMe",
    email: "MistaJ2@google.com",
    password: "aaaaa6",
    slack: "MistaJ2",
    github: "image",
    linkedin: "GeorgeJ"
  }, {
    first_name: "Dexter",
    last_name: "Morgan",
    user_name: "Dex",
    email: "splatterGuy@google.com",
    password: "aaaaa6",
    slack: "Dex",
    github: "image",
    linkedin: "DexterMorgan"
  }, {
    first_name: "LD",
    last_name: "D",
    user_name: "TheDD",
    email: "LD@google.com",
    password: "aaaaa6",
    slack: "eldee",
    github: "image",
    linkedin: "eldee"
    }, {
      first_name: "hodor",
      last_name: "hodor",
      user_name: "hodor",
      email: "hodor@hodor.hodor",
      password: "hodor6",
      slack: "hodor",
      github: "image",
      linkedin: "hodor"
    }, {
      first_name: "GA",
      last_name: "Student",
      user_name: "GA-Student",
      email: "GA@student.com",
      password: "GAisnum1",
      slack: "GA-Student",
      github: "generalassembly",
      linkedin: "GA-Student"
      }]
Student.create(student_data)


  teacher_data = [{
    first_name: "Walter",
    last_name: "White",
    user_name: "TheOneWhoKnocks",
    email: "WW@google.com",
    password: "aaaaa6",
    slack: "MisterWhite",
    github: "WWhite"
  }, {
    first_name: "Mister",
    last_name: "Cooper",
    user_name: "HangWithMe",
    email: "Coops@google.com",
    password: "aaaaa6",
    slack: "WishIWasPlayingBBall",
    github: "Cooooop"
  }, {
    first_name: "GA",
    last_name: "Teacher",
    user_name: "GA-Teacher",
    email: "GA@teacher.com",
    password: "GAisnum1",
    slack: "GA-Teacher",
    github: "GA-Teacher"
  }]
Teacher.create(teacher_data)


course_data = [{
  name: "WDI",
  number: 34,
  github: "https://github.com/sf-wdi-34/schedule"
  }, {
    name: "WDI",
    number: 35,
    students: [],
    github: "https://github.com/sf-wdi-35/schedule#"
    }]

Course.create(course_data)

ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra convallis est ut efficitur. In placerat, lorem id blandit congue, justo ligula varius mi, ut tincidunt nulla ex ac ipsum. Praesent nec purus erat. Donec malesuada mauris odio, sit amet imperdiet magna dictum vitae. Morbi iaculis pulvinar risus a posuere. Nulla hendrerit varius felis euismod sodales. Phasellus vulputate ipsum accumsan arcu lobortis, eu malesuada augue laoreet. Ut mauris elit, pellentesque a blandit quis, cursus et risus.

Ut leo purus, pharetra non euismod ut, tincidunt quis velit. Sed sit amet velit non dolor pharetra lobortis. Curabitur porttitor mauris ac elementum sollicitudin. Ut at malesuada diam, at lobortis velit. Phasellus aliquam elit cursus, mollis sem nec, commodo tortor. In hac habitasse platea dictumst. Fusce dapibus magna eget nisi lobortis fringilla. Vestibulum fermentum ligula augue, mollis ullamcorper libero lacinia cursus. Nam euismod laoreet metus vestibulum facilisis"

assignment_data = [{
  title: "this is how we do it",
  instructions: "it's friday night and I feel all right.",
  assign_date: DateTime.new(2015,03,02),
  due_date: DateTime.new(2015,04,02),
  duration: 1.0,
  visible: true,
  course: Course.first
  }, {
    title: "Putting the fun in function!",
    instructions: ipsum,
    assign_date: DateTime.new(2015,04,02),
    due_date: DateTime.new(2015,05,02),
    duration: 0.25,
    visible: true,
    course: Course.first
  }, {
    title: "Always limber up before body parsing.",
    instructions: ipsum,
    assign_date: DateTime.new(2015,05,02),
    due_date: DateTime.new(2015,10,02),
    duration: 7.0,
    visible: true,
    course: Course.first
  }, {
    title: "Fear of commitment leads to lost data.",
    instructions: ipsum,
    assign_date: DateTime.new(2015,06,02),
    due_date: DateTime.new(2015,07,02),
    duration: 0.5,
    visible: true,
    course: Course.first
  }, {
    title: "A wonderful game",
    instructions: ipsum,
    assign_date: DateTime.new(2015,06,02),
    due_date: DateTime.new(2015,07,02),
    duration: 1.5,
    visible: false,
    course: Course.first
  }]
Assignment.create(assignment_data)


submissions_data = [{
  content: ipsum,
  link: "https://www.google.com",
  assignment: Assignment.all.sample,
  student: Student.all.sample
  }, {
    content: ipsum,
    link: "http://img.memecdn.com/epic-face_o_232179.gif",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }, {
    content: ipsum,
    link: "https://s-media-cache-ak0.pinimg.com/originals/48/10/7e/48107e9a87c50894b348df59fc875830.jpg",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }, {
    content: "bagels for a snack sound good",
    link: "https://www.google.com",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }, {
    content: ipsum,
    link: "https://www.google.com",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }, {
    content: "i think we're alone now.  there doesn't seem to be anyone aroooooound.",
    link: "https://www.google.com",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }]
Submission.create(submissions_data)


feedback_data = [{
  score: 2.4,
  content: ipsum,
  submission: Submission.first
  }, {
    score: 3.6,
    content: "Did you know that the best time to start implementing friendly URLs is always?",
    submission: Submission.second
  }, {
    score: 4.5,
    content: "I can only think of one thing worth wishing for on your birthday would be some magic way to make URLs just a little more friendly.",
    submission: Submission.third
  }, {
    score: 3.0,
    content: ipsum,
    submission: Submission.fourth
  }, {
    score: 2.0,
    content: ipsum,
    submission: Submission.fifth
  }, {
    score: 1.0,
    content: "TL:DR",
    submission: Submission.last
  }]
Feedback.create(feedback_data)


Student.all.each do |f|
  Course.first.students << f
end

Course.second.students << [Student.first, Student.second, Student.third]

Assignment.all.each do |f|
  Course.first.assignments << f
end

Teacher.all.each do |f|
  Course.first.teachers << f
  Course.second.teachers << f
end

# Submission.all.each do |f|
#   Assignment.all.sample.submissions << f
# end


#Below is the code that sets up just the info for the sample accounts

sample_submission = [{content: ipsum,
link: "https://www.google.com",
assignment: Assignment.first,
student: Student.last
}, {
  content: ipsum,
  link: "http://img.memecdn.com/epic-face_o_232179.gif",
  assignment: Assignment.third,
  student: Student.last
}, {
  content: ipsum,
  link: "https://s-media-cache-ak0.pinimg.com/originals/48/10/7e/48107e9a87c50894b348df59fc875830.jpg",
  assignment: Assignment.fourth,
  student: Student.last
}, {
  content: "bagels for a snack sound good",
  link: "https://www.google.com",
  assignment: Assignment.last,
  student: Student.last
}]

sam_sub = Submission.create(sample_submission)

sample_feedback = [{
  score: 2.4,
  content: ipsum,
  submission: sam_sub[0]
  }, {
    score: 3.6,
    content: "Did you know that the best time to start implementing friendly URLs is always?",
    submission: sam_sub[1]
  }, {
    score: 3.0,
    content: ipsum,
    submission: sam_sub[2]
  }, {
    score: 3.14,
    content: ipsum,
    submission: sam_sub[3]
  }]

Feedback.create(sample_feedback)
