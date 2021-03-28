# README

### How to run this code:

1.	Clone this repository.
2.	Ensure you have the appropriate versions of ruby and rails. This project uses ruby version 3.0.0 and rails version 6.1.7. (The code will also work on ruby 2.7.2, but you will need to change the specified ruby version in the .ruby-version file and the Gemfile to whatever your machine is running.)
3.	Set up the rails project from terminal with the following commands:
```
bundle install
rails db:migrate
bundle exec rails s
```
4.	Navigate to localhost:3000 in the browser. If you see a page titled “Articles,” you’re all set up!

**Please to reach out to us if you are unable to get the repository set up and running so that we can help.**


<!-- 4. Open ended question: As you’ve worked on this coding challenge, you may have noticed some problems with the implementation that are beyond the scope of this challenge. If you were actually building this tool into a usable product, what limitations or bugs would you need to address? Make a bullet point list of the next steps you would take if you had more time and add it as a readme. -->


1) As per 1st task we should make comment to be uniq in its table. But if that uniqness is the case we generally should do comment uniq by the combination of commentor and article. So commentor1 and commentor2 can make same comments to either same or different articles and we cam easily trace out them when ever needed.

2) Seems the existing system is developed by default scaffolding so had to make some code level changes to ensure comments being uniq. Otherwise it should be straight forward.

3) There are quite a few issues here and there, needs optimization. 

4) There are no validations implemented.

I could have covered all of them above but my timeline was short so just addressed what ever asked