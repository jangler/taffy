Gem::Specification.new do |s|
  s.name        = 'taffy'
  s.version     = '1.3.0'
  s.date        = '2017-07-07'
  s.summary     = 'A command-line audio tagging tool'
  s.description = "A command-line tool for reading and writing audio \
                   metadata.".squeeze(' ')
  s.authors     = ['Brandon Mulcahy']
  s.email       = 'brandon@jangler.info'
  s.files       = `git ls-files`.split
  s.homepage    = 'https://jangler.info/code/taffy'
  s.license     = 'MIT'

  s.executables << 'taffy'
  s.add_runtime_dependency 'taglib-ruby', '~> 0.7', '>= 0.7.0'
  s.required_ruby_version = '>= 2.0.0'
end
