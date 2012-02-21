$:.unshift(File.expand_path(File.dirname(__FILE__), "config"))
require 'setup'

Cinch::Bot.new do
  configure do |c|
    c.server      = "irc.freenode.org"
    c.nick        = 'zurg'
    c.password    = ENV['IRC_PASSWORD']
    c.channels    = ["##gurupi"]
    c.plugins.plugins = [Zorg, TwitterLogger, Lastfm, MessageManager]
  end
end.start
