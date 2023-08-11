Gem::Specification.new do |s|
  s.name        = 'rubbit'
  s.version     = '0.1.0'
  s.date        = '2023-08-11'
  s.summary     = 'Ruby RIBBIT client'
  s.description = 'Ruby RIBBIT client for connecting to the frog.tips API'
  s.authors     = 'Nick Kuzmik'
  s.email       = 'nick@kuzmik.org'
  s.files       = Dir['lib/**/*']
  s.homepage    = 'http://rubygems.org/gems/rubbit'
  s.license     = 'MIT'

  s.add_development_dependency 'rspec', '~> 3.12'
  s.add_development_dependency 'simplecov', '~> 0.22,9'
  s.add_development_dependency 'rubocop', '~> 1.56.0'
end
