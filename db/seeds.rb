# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Forum.destroy_all
Topic.destroy_all
JobListing.destroy_all
Application.destroy_all
Interview.destroy_all
Comment.destroy_all

# USERS
senada = User.create(name: "Senada Kadric", email: "senada23@yahoo.com", age: 23, field: "Junior Level Software Engineer", phone_number: "6465083193", password: "hello")
hannah = User.create(name: "Hannah Kofkin", email: "hkofkin@gmail.com", age: 27, field: "Junior Level Software Engineer", phone_number: "8474711455",password: "hello")
cristian = User.create(name: "Cristian Cedacero", email: "cristian.cedacero@gmail.com", age: 29, field: "Junior Level Software Engineer", phone_number: "3473894824",password: "hello")
bashir = User.create(name: "Bashir", email: "bashiralhanshali@gmail.com", age: 28, field: "Junior Level Software Engineer", phone_number: "3475204589",password: "hello")


# JOB LISTINGS
listing1 = JobListing.create(company: "Flatiron School", title: "SEC", description: "help desperate students with their code", location: "NYC", listing_url: "learn.co")
listing2 = JobListing.create(company: "Google", title: "software engineer", description: "good luck trying to work here", location: "NYC", listing_url: "google.com")
listing3 = JobListing.create(company: "Amazon", title: "software engineer", description: "eat sleep code repeat", location: "Seattle", listing_url: "amazon.com")

# APPLICATIONS
app1 = Application.create(user_id: hannah.id, job_listing_id: listing1.id, status: "applied", to_do_list: "{ }")
app2 = Application.create(user_id: hannah.id, job_listing_id: listing2.id, status: "applied")
app3 = Application.create(user_id: hannah.id, job_listing_id: listing3.id, status: "interviewed")
app4 = Application.create(user_id: senada.id, job_listing_id: listing1.id, status: "applied")
app5 = Application.create(user_id: senada.id, job_listing_id: listing2.id, status: "interview scheduled")

app7 = Application.create(user_id: senada.id, job_listing_id: listing1.id, status: "applied", to_do_list: "{ }")
app8 = Application.create(user_id: senada.id, job_listing_id: listing2.id, status: "applied")
app9 = Application.create(user_id: senada.id, job_listing_id: listing3.id, status: "applied")

app6 = Application.create(user_id: cristian.id, job_listing_id: listing1.id, status: "applied")

# INTERVIEWS
# Interview.create(application_id: app1.id, date: DateTime.now, complete: false, interviewer: "Bashir", location: "NYC", notes: "im so nervous")
# Interview.create(application_id: app2.id, date: DateTime.now, complete: false, interviewer: "TBD", location: "NYC", notes: "i got this in the bag- to ask: 'when is my start date'")
Interview.create(application_id: app7.id, user_id: senada.id, date: DateTime.now, complete: false, interviewer: "Jack", location: "NYC", notes: "it went horribly :(")
Interview.create(application_id: app4.id, user_id: senada.id, date: DateTime.now, complete: false, interviewer: "Bashir", location: "NYC", notes: "i killed it")
Interview.create(application_id: app3.id,user_id:senada.id, date: DateTime.now, complete: false, interviewer: "Rei", location: "NYC", notes: "prep a lot for this")
Interview.create(application_id: app5.id, user_id: senada.id, date: DateTime.now, complete: false, interviewer: "Michelle", location: "NYC", notes: "heard this interviewer is really sweet")
# Interview.create(application_id: app5.id, date: DateTime.now, complete: false, interviewer: "Ian", location: "NYC", notes: "lets GOOOO")



# FORUM
forum1 = Forum.create(title: "Software Engineer Forum")


# THREADS
topic1 = Topic.create(forum_id: forum1.id, user_id: senada.id, title: "Just applied to JP Morgan", description: "the description goes here")
topic2 = Topic.create(forum_id: forum1.id, user_id: hannah.id, title: "Lets discuss cool design ideas!", description: "the description goes here")
topic3 = Topic.create(forum_id: forum1.id, user_id: cristian.id, title: "Baby Sharks Unite???", description: "the description goes here")

topic4 = Topic.create(forum_id: forum1.id, user_id: bashir.id, title: "How to build a full functioning web app in 30 seconds", description: "the description goes here")


# COMMENTS
Comment.create(topic_id: topic1.id, user_id: hannah.id, content: "omg what happened?")
Comment.create(topic_id: topic1.id, user_id: senada.id, content: "i was rejected :(")

Comment.create(topic_id: topic2.id, user_id: cristian.id, content: "ooo i want in on this")
Comment.create(topic_id: topic2.id, user_id: bashir.id, content: "ome too! want to learn design!")

Comment.create(topic_id: topic3.id, user_id: senada.id, content: "IM BABY SHARK")
Comment.create(topic_id: topic3.id, user_id: bashir.id, content: "i'm grandpa shark")

Comment.create(topic_id: topic4.id, user_id: cristian.id, content: "how did you do it :O")
Comment.create(topic_id: topic4.id, user_id: hannah.id, content: "you are a robot bashir")

#Todos 
Todo.create(application_id: app1.id, task: "Send cover letter", complete: false)
Todo.create(application_id: app1.id, task: "Send follow up email", complete: false)
Todo.create(application_id: app1.id, task: "Research company", complete: false)
Todo.create(application_id: app1.id, task: "Send thank you note", complete: false)
Todo.create(application_id: app1.id, task: "Schedule interview", complete: false)

Todo.create(application_id: app2.id, task: "Send cover letter", complete: false)
Todo.create(application_id: app2.id, task: "Send follow up email", complete: false)
Todo.create(application_id: app2.id, task: "Research company", complete: false)
Todo.create(application_id: app2.id, task: "Send thank you note", complete: false)
Todo.create(application_id: app2.id, task: "Schedule interview", complete: false)

Todo.create(application_id: app3.id, task: "Send cover letter", complete: false)
Todo.create(application_id: app3.id, task: "Send follow up email", complete: false)
Todo.create(application_id: app3.id, task: "Research company", complete: false)
Todo.create(application_id: app3.id, task: "Send thank you note", complete: false)
Todo.create(application_id: app3.id, task: "Schedule interview", complete: false)

Todo.create(application_id: app4.id, task: "Send cover letter", complete: false)
Todo.create(application_id: app4.id, task: "Send follow up email", complete: false)
Todo.create(application_id: app4.id, task: "Research company", complete: false)
Todo.create(application_id: app4.id, task: "Send thank you note", complete: false)
Todo.create(application_id: app4.id, task: "Schedule interview", complete: false)

Todo.create(application_id: app5.id, task: "Send cover letter", complete: false)
Todo.create(application_id: app5.id, task: "Send follow up email", complete: false)
Todo.create(application_id: app5.id, task: "Research company", complete: false)
Todo.create(application_id: app5.id, task: "Send thank you note", complete: false)
Todo.create(application_id: app5.id, task: "Schedule interview", complete: false)

Todo.create(application_id: app6.id, task: "Send cover letter", complete: false)
Todo.create(application_id: app6.id, task: "Send follow up email", complete: false)
Todo.create(application_id: app6.id, task: "Research company", complete: false)
Todo.create(application_id: app6.id, task: "Send thank you note", complete: false)
Todo.create(application_id: app6.id, task: "Schedule interview", complete: false)

Todo.create(application_id: app7.id, task: "Send cover letter", complete: false)
Todo.create(application_id: app7.id, task: "Send follow up email", complete: false)
Todo.create(application_id: app7.id, task: "Research company", complete: false)
Todo.create(application_id: app7.id, task: "Send thank you note", complete: false)
Todo.create(application_id: app7.id, task: "Schedule interview", complete: false)

Todo.create(application_id: app8.id, task: "Send cover letter", complete: false)
Todo.create(application_id: app8.id, task: "Send follow up email", complete: false)
Todo.create(application_id: app8.id, task: "Research company", complete: false)
Todo.create(application_id: app8.id, task: "Send thank you note", complete: false)
Todo.create(application_id: app8.id, task: "Schedule interview", complete: false)

Todo.create(application_id: app9.id, task: "Send cover letter", complete: false)
Todo.create(application_id: app9.id, task: "Send follow up email", complete: false)
Todo.create(application_id: app9.id, task: "Research company", complete: false)
Todo.create(application_id: app9.id, task: "Send thank you note", complete: false)
Todo.create(application_id: app9.id, task: "Schedule interview", complete: false)




puts "=========================="
puts "~~~~~~~~~~SEEDED~~~~~~~~~~"
puts "=========================="
