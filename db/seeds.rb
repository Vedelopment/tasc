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

student_data = [
  {first_name:"Ashley",last_name:"Richardson",user_name:"arichardson0",email:"arichardson0@wikimedia.org",password:"NrCvEnyDSk",slack:"arichardson0",github:"devtestaccount",linkedin:"school/15248519?pathWildcard=15248519"},
  {first_name:"Martha",last_name:"Young",user_name:"myoung1",email:"myoung1@1688.com",password:"OrTKAGx7KDwH",slack:"myoung1",github:"devtestaccount",linkedin:"school/15248519?pathWildcard=15248519"},
  {first_name:"Terry",last_name:"Lopez",user_name:"tlopez2",email:"tlopez2@cam.ac.uk",password:"YgxQJB7VQZr",slack:"tlopez2",github:"devtestaccount",linkedin:"school/15248519?pathWildcard=15248519"},
  {first_name:"Johnny",last_name:"Holmes",user_name:"jholmes3",email:"jholmes3@wordpress.org",password:"a36bbs4K86w",slack:"jholmes3",github:"devtestaccount",linkedin:"school/15248519?pathWildcard=15248519"},
  {first_name:"Willie",last_name:"Spencer",user_name:"wspencer4",email:"wspencer4@mac.com",password:"oxTR0mC9id",slack:"wspencer4",github:"devtestaccount",linkedin:"school/15248519?pathWildcard=15248519"},
  {first_name:"Ronald",last_name:"Torres",user_name:"rtorres5",email:"rtorres5@bizjournals.com",password:"yUoZzApoo2",slack:"rtorres5",github:"devtestaccount",linkedin:"school/15248519?pathWildcard=15248519"},
  {first_name:"Doris",last_name:"Bennett",user_name:"dbennett6",email:"dbennett6@newyorker.com",password:"DPBla6wEul",slack:"dbennett6",github:"devtestaccount",linkedin:"school/15248519?pathWildcard=15248519"},
  {first_name:"Benjamin",last_name:"Payne",user_name:"bpayne7",email:"bpayne7@ucoz.com",password:"JbmEU7Hpla6U",slack:"bpayne7",github:"devtestaccount",linkedin:"school/15248519?pathWildcard=15248519"},
  {first_name:"Sandra",last_name:"Stone",user_name:"sstone8",email:"sstone8@tumblr.com",password:"9Lksr7iwajF",slack:"sstone8",github:"devtestaccount",linkedin:"school/15248519?pathWildcard=15248519"},
  {first_name:"Brandon",last_name:"Mendoza",user_name:"bmendoza9",email:"bmendoza9@utexas.edu",password:"XmwD1gdE",slack:"bmendoza9",github:"devtestaccount",linkedin:"school/15248519?pathWildcard=15248519"},
  {first_name: "Student",last_name: "at GA",user_name: "GA-Student",email: "GA@student.com",password: "GAisnum1",slack: "GA-Student",github: "devtestaccount",linkedin: "school/15248519?pathWildcard=15248519"}
]
Student.create(student_data)

teacher_data = [
  {first_name:"Margaret",last_name:"Sullivan",user_name:"msullivan0",email:"msullivan0@cisco.com",password:"J2CUN15C7pMt",slack:"msullivan0",github:"devtestaccount"},
  {first_name:"Catherine",last_name:"Hicks",user_name:"chicks1",email:"chicks1@nifty.com",password:"aBgyiJi9",slack:"chicks1",github:"devtestaccount"},
  {first_name: "Teacher",last_name: "at GA",user_name: "GA-Teacher",email: "GA@teacher.com",password: "GAisnum1",slack: "GA-Teacher",github: "devtestaccount"}
]
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

assignment_data = [{
    title: "Lighting Talks, episode 2",
    instructions: "Prep a lightning talk for Monday afternoon! Further details: https://github.com/sf-wdi-34/lightning-talk/blob/master/README.md",
    assign_date: DateTime.new(2015,03,02),
    due_date: DateTime.new(2015,04,02),
    duration: 1.0,
    visible: true,
    course: Course.first
  }, {
    title: "Hash Maps",
    instructions: "Spend 30 minutes looking over the hash map lab. It has a coding challenge you can try if you'd like. If so, fork and clone it, and spend your time modifying and understanding just the put method. Further details: https://github.com/sf-wdi-34/hash-map-lab#coding-challenge",
    assign_date: DateTime.new(2015,04,02),
    due_date: DateTime.new(2015,05,02),
    duration: 0.25,
    visible: true,
    course: Course.first
  }, {
    title: "Refactor your rails app.",
    instructions: "Finish the Steps to Refactor listed in the Rails Views & Helpers training. Remember to refrence the external resources and the class glossary/cheatsheet. Set a time limit for each task to attempt it without looking at the solutions (maybe 20 minutes), then compare your approach to the solution and make sure you understand how to complete the task. Further details: https://github.com/sf-wdi-34/rails_views_helpers_training",
    assign_date: DateTime.new(2015,05,02),
    due_date: DateTime.new(2015,10,02),
    duration: 7.0,
    visible: true,
    course: Course.first
  }, {
    title: "Continue work on personal portfolio.",
    instructions: "Rebuild or refine your portfolio site. Choose 3-5 projects to include on the site. Make sure that your choices are consistent with the range of skills you want to display on the job market. If you select group work, be sure to highlight the portion you worked on. Further Details: https://github.com/sf-wdi-34/final-portfolio",
    assign_date: DateTime.new(2015,06,02),
    due_date: DateTime.new(2015,07,02),
    duration: 0.5,
    visible: true,
    course: Course.first
  }, {
    title: "Build your first project!",
    instructions: "Start coding your Project 0. Remember to test out small pieces as you go, and build a simple (skateboard) version first. Further details: https://github.com/sf-wdi-34/project-0",
    assign_date: DateTime.new(2015,06,02),
    due_date: DateTime.new(2015,07,02),
    duration: 1.5,
    visible: true,
    course: Course.first
  }]
Assignment.create(assignment_data)


submissions_data = [{
    content: "Sample Submission One. Here is my submission for this assigment. I had some trouble with images on the heroku deployed version but everything else is working as expected. Please let me know how you feel about the site flow, I've gotten a few comments that there are some navigation buttons that could improve the experience and also if you notice any logic that could benefit from refactoring.",
    link: "https://github.com/devtestaccount/sample_one",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }, {
    content: "Sample Submission One. Here is my submission for this assigment. I had some trouble with images on the heroku deployed version but everything else is working as expected. Please let me know how you feel about the site flow, I've gotten a few comments that there are some navigation buttons that could improve the experience and also if you notice any logic that could benefit from refactoring.",
    link: "https://github.com/devtestaccount/sample_two",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }, {
    content: "Sample Submission One. Here is my submission for this assigment. I had some trouble with images on the heroku deployed version but everything else is working as expected. Please let me know how you feel about the site flow, I've gotten a few comments that there are some navigation buttons that could improve the experience and also if you notice any logic that could benefit from refactoring.",
    link: "https://github.com/devtestaccount/sample_three",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }, {
    content: "Sample Submission One. Here is my submission for this assigment. I had some trouble with images on the heroku deployed version but everything else is working as expected. Please let me know how you feel about the site flow, I've gotten a few comments that there are some navigation buttons that could improve the experience and also if you notice any logic that could benefit from refactoring.",
    link: "https://github.com/devtestaccount/sample_four",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }, {
    content: "Sample Submission One. Here is my submission for this assigment. I had some trouble with images on the heroku deployed version but everything else is working as expected. Please let me know how you feel about the site flow, I've gotten a few comments that there are some navigation buttons that could improve the experience and also if you notice any logic that could benefit from refactoring.",
    link: "https://github.com/devtestaccount/sample_five",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }, {
    content: "Sample Submission One. Here is my submission for this assigment. I had some trouble with images on the heroku deployed version but everything else is working as expected. Please let me know how you feel about the site flow, I've gotten a few comments that there are some navigation buttons that could improve the experience and also if you notice any logic that could benefit from refactoring.",
    link: "https://github.com/devtestaccount/sample_six",
    assignment: Assignment.all.sample,
    student: Student.all.sample
  }]
Submission.create(submissions_data)


feedback_data = [{
    score: 2.4,
    content: "Sample Feedback One. Great work and interesting app idea. Code is DRY and well-indented. Think about ways you could separate some of the logic into smaller components. Let's meet in person to discuss more detailed feedback.",
    submission: Submission.first
  }, {
    score: 3.6,
    content: "Sample Feedback Two. Great work and interesting app idea. Code is DRY and well-indented. Think about ways you could separate some of the logic into smaller components. Let's meet in person to discuss more detailed feedback.",
    submission: Submission.second
  }, {
    score: 4.5,
    content: "Sample Feedback Three. Great work and interesting app idea. Code is DRY and well-indented. Think about ways you could separate some of the logic into smaller components. Let's meet in person to discuss more detailed feedback.",
    submission: Submission.third
  }, {
    score: 3.0,
    content: "Sample Feedback Four. Great work and interesting app idea. Code is DRY and well-indented. Think about ways you could separate some of the logic into smaller components. Let's meet in person to discuss more detailed feedback.",
    submission: Submission.fourth
  }, {
    score: 2.0,
    content: "Sample Feedback Five. Great work and interesting app idea. Code is DRY and well-indented. Think about ways you could separate some of the logic into smaller components. Let's meet in person to discuss more detailed feedback.",
    submission: Submission.fifth
  }, {
    score: 1.0,
    content: "Sample Feedback Six. Great work and interesting app idea. Code is DRY and well-indented. Think about ways you could separate some of the logic into smaller components. Let's meet in person to discuss more detailed feedback.",
    submission: Submission.last
  }]
Feedback.create(feedback_data)

Student.all.each do |f|
  Course.first.students << f
  Student.get_profile_pic(f)
end

Course.second.students << [Student.first, Student.second, Student.third, Student.last]

Course.first.assignments << [Assignment.first, Assignment.second, Assignment.third, Assignment.last]
Course.second.assignments << [Assignment.fourth, Assignment.fifth]

# Assignment.all.each do |f|
#   Course.first.assignments << f
#   Course.second.assignments << f
# end

Teacher.all.each do |f|
  Course.first.teachers << f
  Course.second.teachers << f
end

#Below is the code that sets up just the info for the sample accounts

sample_submission = [{
  content: "Sample Submission One. Here is my submission for this assigment. I had some trouble with images on the heroku deployed version but everything else is working as expected. Please let me know how you feel about the site flow, I've gotten a few comments that there are some navigation buttons that could improve the experience and also if you notice any logic that could benefit from refactoring.",
  link: "https://github.com/devtestaccount/sample_one",
  assignment: Assignment.first,
  student: Student.last
}, {
  content: "Sample Submission Two. Here is my submission for this assigment. I had some trouble with images on the heroku deployed version but everything else is working as expected. Please let me know how you feel about the site flow, I've gotten a few comments that there are some navigation buttons that could improve the experience and also if you notice any logic that could benefit from refactoring.",
  link: "https://github.com/devtestaccount/sample_two",
  assignment: Assignment.third,
  student: Student.last
}, {
  content: "Sample Submission Three. Here is my submission for this assigment. I had some trouble with images on the heroku deployed version but everything else is working as expected. Please let me know how you feel about the site flow, I've gotten a few comments that there are some navigation buttons that could improve the experience and also if you notice any logic that could benefit from refactoring.",
  link: "https://github.com/devtestaccount/sample_three",
  assignment: Assignment.fourth,
  student: Student.last
}, {
  content: "Sample Submission Four. Here is my submission for this assigment. I had some trouble with images on the heroku deployed version but everything else is working as expected. Please let me know how you feel about the site flow, I've gotten a few comments that there are some navigation buttons that could improve the experience and also if you notice any logic that could benefit from refactoring.",
  link: "https://github.com/devtestaccount/sample_four",
  assignment: Assignment.last,
  student: Student.last
}]

sam_sub = Submission.create(sample_submission)

sample_feedback = [{
    score: 2.4,
    content: "Sample Feedback One. Great work and interesting app idea. Code is DRY and well-indented. Think about ways you could separate some of the logic into smaller components. Let's meet in person to discuss more detailed feedback.",
    submission: sam_sub[0]
  }, {
    score: 3.6,
    content: "Sample Feedback Two. Great work and interesting app idea. Code is DRY and well-indented. Think about ways you could separate some of the logic into smaller components. Let's meet in person to discuss more detailed feedback.",
    submission: sam_sub[1]
  }, {
    score: 3.0,
    content: "Sample Feedback Three. Great work and interesting app idea. Code is DRY and well-indented. Think about ways you could separate some of the logic into smaller components. Let's meet in person to discuss more detailed feedback.",
    submission: sam_sub[2]
  }, {
    score: 3.14,
    content: "Sample Feedback Four. Great work and interesting app idea. Code is DRY and well-indented. Think about ways you could separate some of the logic into smaller components. Let's meet in person to discuss more detailed feedback.",
    submission: sam_sub[3]
  }]

Feedback.create(sample_feedback)
