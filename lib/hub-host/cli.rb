require 'mixlib/cli'

module HubHost
  class HubHost::CLI
    include Mixlib::CLI
    option :config_file, 
      :short => "-c CONFIG",
      :long  => "--config CONFIG",
      :default => 'config.rb',
      :description => "The configuration file to use"
  
    option :log_level, 
      :short => "-l LEVEL",
      :long  => "--log_level LEVEL",
      :description => "Set the log level (debug, info, warn, error, fatal)",
      :required => true,
      :proc => Proc.new { |l| l.to_sym }
  
    option :help,
      :short => "-h",
      :long => "--help",
      :description => "Show this message",
      :on => :tail,
      :boolean => true,
      :show_options => true,
      :exit => 0
  end
end

