Gem::Specification.new do |s|
  s.name        = 'taffy'
  s.version     = '1.0.0'
  s.date        = '2015-04-26'
  s.summary     = 'command-line media tagging interface'
  s.description = "A command-line interface for reading and writing audio \
                   metadata.".squeeze(' ')
  s.authors     = ['Brandon Mulcahy']
  s.email       = 'brandon@jangler.info'
  s.files       = `git ls-files`.split
  s.homepage    = 'https://github.com/jangler/taffy'
  s.license     = 'MIT'

  s.executables << 'taffy'
  s.add_runtime_dependency 'taglib-ruby', '~> 0.7', '>= 0.7.0'
  s.required_ruby_version = '>= 2.0.0'
end
