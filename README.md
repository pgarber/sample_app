# Ruby on Rails Tutorial: sample application
Phil Garber

This is the sample application for
the [*Ruby on Rails Tutorial*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/).

views from divshot:
homepage.html went into users/_homepage.html.erb
myfeedback went into users/show.html.erb
landing.html went into shared/_landing.html.erb
leaderboard.html went into users/leaderboard.html (should it be a partial?)
give_feedback.html went into static_pages/give_feedback.html.erb

try to do better design with shared/_signed_in_sidebar.html.erb

to do:
anyone signed in user can see other users' full feedback

2/5/14: created Attributes controller and Attribute model
		created Feedbacks controller and Feedback model

NOW WORKING in code/BUv2 - still called branch BU_hartl (and sample app still has a BU_hartl but I checked out)		