require 'ruble'

require 'ruble'

command 'Visit Project Page' do |cmd|
  cmd.input = :none
  cmd.output = :discard
  cmd.invoke do |context|
   context.browser.open("https://github.com/berkayunal/Aptana-Bundle--Twitter-Bootstrap", :browser => :default)
    nil
  end
end
command 'Visit Twitter Bootstrap Homepage' do |cmd|
  cmd.input = :none
  cmd.output = :discard
  cmd.invoke do |context|
   context.browser.open("http://twitter.github.com/bootstrap", :browser => :default)
    nil
  end
end
command 'About Berkay UNAL' do |cmd|
  cmd.input = :none
  cmd.output = :discard
  cmd.invoke do |context|
   context.browser.open("http://www.berkayunal.com", :browser => :default)
    nil
  end
end

command 'About Bora UNAL' do |cmd|
  cmd.input = :none
  cmd.output = :discard
  cmd.invoke do |context|
   context.browser.open("http://www.boraunal.com", :browser => :default)
    nil
  end
end