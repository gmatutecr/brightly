# README

Welcome, to Brightly with this system you will be able to manage people, companies and buildings.


## Why Brightly?

Naming things can be hard, so for this project I used a random word generator and picked the 
first word that I liked. So I dub you Brightly!

* Delivery Date
  Dec 15 2019

* Installation
- Install RVM
- Instal rails gem 
`gem install rails`
- run bundler
`bundle install`
- run migrations
`rake db:create`
`rake db:migrate`
- to run tests
`bundle exec rspec`
- To load Fixtures to DB
`rake db:drop`
`rake db:create`
`rake db:migrate`
`rake db:fixtures:load`

* Gender format selection
I decided to use the ISO/IEC 5218 standard [See it wikipedia](https://en.wikipedia.org/wiki/ISO/IEC_5218)
- 0 = not known,
- 1 = male,
- 2 = female,
- 9 = not applicable