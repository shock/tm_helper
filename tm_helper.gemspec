# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tm_helper}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["shock"]
  s.date = %q{2010-12-31}
  s.description = %q{}
  s.email = %q{billdoughty@capitalthought.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "VERSION"
  ]
  s.homepage = %q{http://github.com/capitalthought/tm_helper}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Helper for Ruby development in TextMate.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<activesupport>, [">= 2.3.8"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.3.8"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.3.8"])
  end
end

