require 'cgi'
require 'logger'

module TmHelper
  def self.convert_to_html string
    CGI.escapeHTML(string).gsub("\n", "<br/>")
  end

  def self.textmate_wrap string
    if self.running_rspec_bundle?
      self.convert_to_html string
    else
      string
    end
  end

  def self.running_in_textmate?
    ENV["TM_PROJECT_DIRECTORY"] || ENV["TM_FILEPATH"] || ENV["TM_HELPER"]
  end

  def self.running_rspec_bundle?
    defined?(::RSpec::Mate) || defined?(::SpecMate) || ENV["TM_RSPEC"]
  end
end

if TmHelper.running_in_textmate?
  module Kernel
    def printout string
      puts TmHelper.textmate_wrap( string ) + "<br/>"
    end
  end
else
  module Kernel
    def printout string
      puts string
    end
  end
end

if TmHelper.running_in_textmate? && ENV["TM_SHOW_LOGS"]
  require 'active_support/core_ext/logger'
  class Logger
    alias :orig_info :info
    alias :orig_debug :debug
    alias :orig_warn :warn
    alias :orig_error :error

    def info string; orig_info string; printout string; end
    def debug string; orig_debug string; printout string; end
    def warn string; orig_warn string; printout string; end
    def error string; orig_error string; printout string; end

  end
end

