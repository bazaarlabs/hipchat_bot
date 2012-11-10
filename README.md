# HipchatBot

Simple and configurable bot for Hipchat! 

**NOTE**: Originally adapted from [happy_fun_time_bot](https://github.com/gammons/happy_fun_time_bot), 
but revised with a new shorter name, some improvements
and to work on Ruby 1.9.3 since the original does not seem to work. 

100% of the credit for this goes to [happy_fun_time_bot](https://github.com/gammons/happy_fun_time_bot)
and [gammons](https://github.com/gammons) for this gem. I just made it work on 1.9.3

First install the gem:

Add this line to your application's Gemfile:

    gem 'hipchat_bot'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hipchat_bot

Now let's take a look at how this works:

```ruby
#!/usr/bin/env ruby

require 'rubygems'
require 'hipchat_bot'

@bot = HipchatBot.new(:jid => "xxxx@chat.hipchat.com", 
                           :nick => "Hipchat Bot", 
                           :room => "123_your_talk_chan@conf.hipchat.com", 
                           :password => "xxxx")

@bot.add_responder('heybot') do |from, args|
  "Oh HAI #{from}!!!"
end

@bot.run!
```

```
Bob: !heybot what's up?
HipChat Bot:  Oh HAI Bob!!!
```

### So many IdeazzZz!!

**Add responders to insert random images of dogs in costumes!**

```
Bob: !findimage dog costume
HipChat Bot: Here ya go!
```
![](http://spoilurpets.com/images/Lobster%20Paws%20Dog%20Costume.JPG)


**Kick off a build!**

```
Bob: !build_the_app
HipChat Bot: All tests PASSED!
```

![](http://thehairpin.com/wp-content/uploads/2010/12/womanpic1001_228x342.jpeg)

**Deploy your app!**

```
Bob: !deploy
HipChat Bot: Deploying now!
```

### Bot creation Options:

* `:jid` - Required.
* `:nick` - The nickname for the bot to use.
* `:room` - Required.  The room to enter.
* `:password` - The bot's password.
* `:command_regex` - The regular expression to test for a command.  The default is a ! followed by a word.  e.g. `/^!(.+)$/`

## Copyright

Copyright (c) 2011 Grant Ammons. See LICENSE.txt for further details.
