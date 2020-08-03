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
listing1 = JobListing.create(
    company: "Grubhub", 
    title: "Software Engineer", 
    description: "Design, implement, and deliver awesome technical platforms and products for all constituencies", 
    location: "New York City", 
    listing_url: "https://www.linkedin.com/jobs/view/1939034767/")
listing2 = JobListing.create(
    company: "Morgan Stanley", 
    title: "Full Stack Web Developer - Associate", 
    description: "Morgan Stanley is seeking a software developer to assist with building solutions", 
    location: "New York City", 
    listing_url: "https://www.linkedin.com/jobs/view/1973285610/")
listing3 = JobListing.create(
    company: "IBM", 
    title: "Full Stack Developer", 
    description: "As a Full Stack Developer, you will be integral to the process of invention and innovation.", 
    location: "New York City", 
    listing_url: "https://www.linkedin.com/jobs/view/1952545438/")

# APPLICATIONS
app1 = Application.create(user_id: hannah.id, job_listing_id: listing1.id, status: "interview scheduled", date_applied: Time.zone.now.to_date)
app2 = Application.create(user_id: hannah.id, job_listing_id: listing2.id, status: "applied", date_applied: Time.zone.now.to_date)
app3 = Application.create(user_id: hannah.id, job_listing_id: listing3.id, status: "interviewed", date_applied: Time.zone.now.to_date)
app4 = Application.create(user_id: senada.id, job_listing_id: listing1.id, status: "applied", date_applied: Time.zone.now.to_date)
app5 = Application.create(user_id: senada.id, job_listing_id: listing2.id, status: "interview scheduled", date_applied: Time.zone.now.to_date)

app7 = Application.create(user_id: senada.id, job_listing_id: listing1.id, status: "applied", date_applied: Time.zone.now.to_date)
app8 = Application.create(user_id: senada.id, job_listing_id: listing2.id, status: "applied", date_applied: Time.zone.now.to_date)
app9 = Application.create(user_id: senada.id, job_listing_id: listing3.id, status: "applied", date_applied: Time.zone.now.to_date)

app6 = Application.create(user_id: cristian.id, job_listing_id: listing1.id, status: "applied", date_applied: Time.zone.now.to_date )

# INTERVIEWS
# Interview.create(application_id: app1.id, date: DateTime.now, complete: false, interviewer: "Bashir", location: "NYC", notes: "im so nervous")
# Interview.create(application_id: app2.id, date: DateTime.now, complete: false, interviewer: "TBD", location: "NYC", notes: "i got this in the bag- to ask: 'when is my start date'")
Interview.create(application_id: app1.id, user_id: hannah.id, date: DateTime.now + 3.days, complete: false, interviewer: "Jack", location: "NYC", notes: "Need to prepare questions for interviewer")
Interview.create(application_id: app3.id, user_id: hannah.id, date: DateTime.now, complete: true, interviewer: "Bashir", location: "NYC", notes: "Follow up questions: When will the hiring manager be making a decision?")
Interview.create(application_id: app3.id,user_id:hannah.id, date: DateTime.now + 12.days, complete: false, interviewer: "Rei", location: "NYC", notes: "Need to prep a lot for this")
# Interview.create(application_id: app5.id, user_id: hannah.id, date: DateTime.now, complete: false, interviewer: "Michelle", location: "NYC", notes: "heard this interviewer is really sweet")
# Interview.create(application_id: app5.id, date: DateTime.now, complete: false, interviewer: "Ian", location: "NYC", notes: "lets GOOOO")



# FORUM
forum1 = Forum.create(title: "Software Engineer Forum")


# THREADS
topic1 = Topic.create(forum_id: forum1.id, user_id: senada.id, title: "Best Resume Tips", description: "You might not think to look to your annual review for resume material, but checking out the positive feedback you’ve received in years past can help you identify your most noteworthy accomplishments and best work attributes — two things that should definitely be highlighted on your resume. Including specific feedback you’ve received and goals you’ve met can help you avoid needing to use “fluff” to fill out your work experience.")
topic2 = Topic.create(forum_id: forum1.id, user_id: hannah.id, title: "How to Make Your Portfolio Stand Out", description: "Every developer should have at least one or two personal projects in their front end developer portfolio. This could be something like Jessica Hische’s Mom This is How Twitter Works, or something like a framework or starter theme. It all depends on what kind of skills you want to show off.
One key thing here is to make sure your source code (or at least a sample of it) is available for public view. You want it to be possible for potential employers to dive in and see just how elegant and clean your code really is.")
topic3 = Topic.create(forum_id: forum1.id, user_id: cristian.id, title: "Tips for Interview Prep", description: "Understanding who will be interviewing you is a great way to prepare for a job interview. Search LinkedIn for the interviewer’s profile. See if they’re active on Twitter. Check if they have a bio on the company website. It helps to know what the person looks like, but having some background information on them can help as well. Maybe you have some of the same connections, or you even went to the same school.")

topic4 = Topic.create(forum_id: forum1.id, user_id: bashir.id, title: "How to build a full functioning web app in 30 seconds", description: "Planning is arguably the most challenging phase of the development process. This is where you actually try to envision the end product. Planning each module, workflow and function systematically lays the groundwork for a strong project foundation. Using collaborative and visual communication tools are very helpful during this phase. We use Lucidcharts to help us design workflows and Balsamiq Mockups to build wireframes. Both these tools are ideal for collaboration and it encourages our clients to be fully engaged throughout the entire process.")


# COMMENTS
Comment.create(topic_id: topic1.id, user_id: hannah.id, content: "How do know all this info? Super helpful!")
Comment.create(topic_id: topic1.id, user_id: cristian.id, content: "These are great thank you!")

Comment.create(topic_id: topic2.id, user_id: cristian.id, content: "What if you have too many projects to show?")
Comment.create(topic_id: topic2.id, user_id: bashir.id, content: "Should I host my portfolio on a private server?")

Comment.create(topic_id: topic3.id, user_id: senada.id, content: "How can I get over being nervous for my interview?")
Comment.create(topic_id: topic3.id, user_id: bashir.id, content: "Just be yourself!")

Comment.create(topic_id: topic4.id, user_id: cristian.id, content: "Only robots can do this")
Comment.create(topic_id: topic4.id, user_id: hannah.id, content: "Learn how to use git properly")

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
