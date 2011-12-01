require 'ruble'

require 'ruble'

command 'Visit Project Homepage' do |cmd|
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


command "Check for Updates" do |cmd|
  cmd.input = :none
  cmd.output = :show_as_tooltip
  cmd.invoke do
    str = ""
    
    git_path = com.aptana.git.core.model.GitExecutable.instance.path.toOSString
    
    bundle_manager = Ruble::BundleManager.manager
    bundles_dir = bundle_manager.getUserBundlesPath
    Dir.chdir(bundles_dir)  # Go to bundles root dir
    Dir.glob("twitter-bootstrap.rub*").each do |filename|
      bundle_dir = File.join(bundles_dir, filename)
      bundle_dir = File.readlink(bundle_dir) if File.symlink?(bundle_dir)
      Dir.chdir(bundle_dir) do |dir|
        str << dir.to_s; str << ": "
        IO.popen("#{git_path} pull", 'r') {|io| str << io.read } if File.exists?(File.join(dir, ".git"))
        IO.popen("svn update", 'r') {|io| str << io.read } if File.exists?(File.join(dir, ".svn"))
      end
    end
    str
  end
end