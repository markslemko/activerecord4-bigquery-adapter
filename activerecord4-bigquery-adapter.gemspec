Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'activerecord4-bigquery-adapter'
  s.version = '0.0.1'
  s.summary = 'BigQuery adapter for ActiveRecord 4'
  s.description = 'BigQuery _makeshift_ adapter for ActiveRecord 4.'
  s.license = 'MIT'

  s.author = ['Mark Slemko']
  s.email = 'markslemko@gmail.com'
  s.homepage = 'http://github.com/markslemko/activerecord4-bigquery-adapter'

  s.files = Dir.glob(['LICENSE', 'README.md', 'lib/**/*.rb'])
  s.require_path = 'lib'

  s.required_ruby_version = '>= 2.0.0'
  s.add_dependency 'google-cloud-bigquery', ['~> 0.25']
  s.add_dependency 'activerecord', ['~> 4.2.0']
end
