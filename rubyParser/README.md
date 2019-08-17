<h2>Input Parser</h2>

The purpose of this application is to provide a statistic with the number of views certain links have received from most popular to least popular. It can also provides the same static while excluding duplicate ip adresses.

The command to use the app is:
```
ruby parser.rb "webserver.log"
```

With the log file in the specific format of 
```
/help_page/1 126.318.035.038 \n
```
The expected response should be:
```
C:\rubyParser\ruby_app>ruby parser.rb "webserver.log"
For the /about/2 page there are 90 views.
For the /contact page there are 89 views.
For the /index page there are 82 views.
For the /about page there are 81 views.
For the /help_page/1 page there are 80 views.
For the /home page there are 78 views.
For the /help_page/1 page there are 23 unique views.
For the /contact page there are 23 unique views.
For the /index page there are 23 unique views.
For the /home page there are 23 unique views.
For the /about/2 page there are 22 unique views.
For the /about page there are 21 unique views.
```
There are also 10 Rspec tests that are ensuring the functions inside the app are working as expected. To run these tests you need to run the command:
```
rspec parser_spec.rb
```

The expected response should be:
```
C:\rubyParser\ruby_app\spec>rspec parser_spec.rb
..........

Finished in 0.01918 seconds (files took 0.19817 seconds to load)
10 examples, 0 failures
```
