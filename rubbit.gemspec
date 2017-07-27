Gem::Specification.new do |s|
  s.name        = 'rubbit'
  s.version     = '0.0.2'
  s.date        = '2016-02-29'
  s.summary     = 'Ruby RIBBIT client'
  s.description = 'Ruby RIBBIT client for connecting to the frog.tips API'
  s.authors     = 'Nick Kuzmik'
  s.email       = 'nick@kuzmik.org'
  s.files       = Dir['lib/**/*']
  s.homepage    = 'http://rubygems.org/gems/rubbit'
  s.license     = 'MIT'

  s.add_development_dependency 'rspec', '~> 3.6'
  s.add_development_dependency 'simplecov', '~> 0.14'
  s.add_development_dependency 'rubocop', '~> 0.49'
end
