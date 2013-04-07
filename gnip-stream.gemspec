# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gnip-stream/version"

Gem::Specification.new do |s|
  s.name        = "gnip-stream"
  s.version     = GnipStream::VERSION
  s.authors     = ["Ryan Weald", "Eric Wendelin"]
  s.email       = ["ryan@weald.com", "me@eriwen.com"]
  s.homepage    = "https://github.com/eriwen/gnip-stream"
  s.summary     = "A library to connect and stream data from the GNIP streaming API"
  s.description = %q{}

  s.rubyforge_project = "gnip-stream"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "vendor"]

  s.add_development_dependency 'rake', '~> 10.0.3'
  s.add_development_dependency 'rspec', '~> 2.13.0'
  s.add_development_dependency 'webmock', '~> 1.8.11'
  s.add_development_dependency 'guard', '~> 1.6.2'
  s.add_development_dependency 'guard-rspec', '~> 2.5.0'
  s.add_development_dependency 'fuubar', '~> 1.1.0'
  s.add_development_dependency 'coveralls', '~> 0.6.4'

  if RbConfig::CONFIG['host_os'] =~ /darwin/
    s.add_development_dependency 'rb-fsevent'
    s.add_development_dependency 'ruby_gntp'
  elsif RbConfig::CONFIG['host_os'] =~ /linux/
    s.add_development_dependency 'rb-inotify'
    s.add_development_dependency 'libnotify'
  elsif RbConfig::CONFIG['host_os'] =~ /msmin|mingw/
    s.add_development_dependency 'wdm'
    s.add_development_dependency 'rb-notifu'
  end

  s.add_dependency "em-http-request", ">= 1.0.3"
end
