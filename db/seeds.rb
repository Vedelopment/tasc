# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all
Assignment.destroy_all
Course.destroy_all
Submission.destroy_all
Feedback.destroy_all

student_data = [{
  first_name: "Ivana",
  last_name: "Tinkle",
  user_name: "ivyT",
  email: "ivyT@google.com",
  password_digest: "a",
  slack: "ivyT",
  github: "ivyT",
  linkedin: "IvyT"
  }, {
    first_name: "Amanda",
    last_name: "Hugunkys",
    user_name: "AmandaH",
    email: "AHugunkys@google.com",
    password_digest: "a",
    slack: "AmandaH",
    github: "AHugunkys",
    linkedin: "AHugunkys"
  }, {
    first_name: "George",
    last_name: "Jetson",
    user_name: "MeetMe",
    email: "MistaJ2@google.com",
    password_digest: "a",
    slack: "MistaJ2",
    github: "GeorgeJ",
    linkedin: "GeorgeJ"
  }, {
    first_name: "Dexter",
    last_name: "Morgan",
    user_name: "Dex",
    email: "splatterGuy@google.com",
    password_digest: "a",
    slack: "Dex",
    github: "MiamiSplatter",
    linkedin: "DexterMorgan"
  }, {
    first_name: "Walter",
    last_name: "White",
    user_name: "TheOneWhoKnocks",
    email: "WW@google.com",
    password_digest: "a",
    slack: "MisterWhite",
    github: "WWhite",
    linkedin: "WWhite"
    }, {
      first_name: "hodor",
      last_name: "hodor",
      user_name: "hodor",
      email: "hodor@hodor.hodor",
      password_digest: "hodor",
      slack: "hodor",
      github: "hodor",
      linkedin: "hodor"
    }]

course_data = [{
  name: "WDI",
  number: 34
  }, {
    name: "WDI",
    number: 35
    }]

assignment_data = [{
  title: "this is how we do it",
  instructions: "it's friday night and I feel all right.",
  assign_date: DateTime.new(2015,03,02),
  due_date: DateTime.new(2015,04,02),
  duration: 1.0,
  visible: true
  }, {
    title: "Putting the fun in function!",
    instructions: "First, I need all of you to stop laughing.  Next, write a function.  Ain't that fun?",
    assign_date: DateTime.new(2015,04,02),
    due_date: DateTime.new(2015,05,02),
    duration: 0.25,
    visible: true
  }, {
    title: "Always limber up before body parsing.",
    instructions: "Everyone stretch for about 6 hours and 45 minutes.  Next look near the surface of the DOM and you'll find the body.  See it?  Good.  Now, parse it.",
    assign_date: DateTime.new(2015,05,02),
    due_date: DateTime.new(2015,10,02),
    duration: 7.0,
    visible: true
  }, {
    title: "Fear of commitment leads to lost data.",
    instructions: "Commit every time you do a thing that works or gives you one fewer error.  Here's a checklist for you:  a) Have you commited?  b) Did you do a thing?  C)  Does it work or did it give you at least one fewer error?  orange) See step 1.",
    assign_date: DateTime.new(2015,06,02),
    due_date: DateTime.new(2015,07,02),
    duration: 0.5,
    visible: true
  }, {
    title: "A wonderful game",
    instructions: "Now we're going to do something extremely fun.  We're going to play a wonderful game called who is my daddy, and what does he do?",
    assign_date: DateTime.new(2015,08,02),
    due_date: DateTime.new(2015,09,02),
    duration: 1.5,
    visible: true
  }]

submissions_data = [{
  content: "ooga, booga",
  link: "https://www.google.com"
  }, {
    content: "You have to look carefully for errors.",
    link: "http://img.memecdn.com/epic-face_o_232179.gif"
  }, {
    content: "Submission data, submission data.  Submission ... data.  sbmssndt, wait, I mean SUBMISSION DATA!",
    link: "https://s-media-cache-ak0.pinimg.com/originals/48/10/7e/48107e9a87c50894b348df59fc875830.jpg"
  }]

feedback_data = [{
  score: 2.4,
  content: "I think you should focus on friendly URLs."
  }, {
    score: 3.6,
    content: "Did you know that the best time to start implementing friendly URLs is always?"
  }, {
    score: 4.5,
    content: "I can only think of one thing worth wishing for on your birthday would be some magic way to make URLs just a little more friendly."
  }, {
    score: 3.0,
    content: "It seemed clear, from the moment I saw these URLs that you were headed in the right direction.  These are some friendly URLs."
  }, {
    score: 2.0,
    content: "Your usage of profanity as variables was an inspiring usage of the english language.  Exactly who or what it inspired is still up for debate."
  }, {
    score: 1.0,
    content: "TL:DR"
  }]

Student.create(student_data)
Course.create(course_data)
Assignment.create(assignment_data)
Submission.create(submissions_data)
Feedback.create(feedback_data)
