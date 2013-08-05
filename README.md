#Climategate

Eviscerated from [highlander](https://github.com/ashmckenzie/highlander)

gem install climategate

copy dotenv and give it your bits:

    cp dotenv .env

the codes

    require 'climategate'

    c = Climategate.new
    c.authorize!
    c.entries_from(DateTime.now - 5.mins)

