class TwilioController < ApplicationController
  def index
    #!/usr/bin/ruby
    require 'csv'
    require 'csv'
    require 'twilio-ruby'

    # put your own credentials here
    account_sid = 'AC4adec58f8d48fb0ea9b78a447610fd6b'
    auth_token = '2392fad532397ce9f4eb9ad1083f30a4'
    # set up a client to talk to the Twilio REST API

    @client = Twilio::REST::Client.new account_sid, auth_token
    CSV.foreach("https://docs.google.com/spreadsheet/fm?id=tvFoPUaA5TGiE_fZPbm-YtQ.11922642169996436616.8339955408462658727&fmcmd=5&gid=0, https://docs.google.com/spreadsheet/ccc?key=0AiV23TYgRfdsdHZGb1BVYUE1VEdpRV9mWlBibS1ZdFE") do |row|
            number = row[3]
            begin
              number.gsub(/[() -]/, '')
              next unless number.length == 10
              print "Sending message to #{number}...\n"
              @client.account.messages.create(
                      :from => '+14242250546',
                      :to => "+1#{number}",
                      :body => "Welcome to HACKTECH!" 
              )
            rescue
              next
            end
    end
  end
end
