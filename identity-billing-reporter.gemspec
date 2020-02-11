# rubocop:disable Style/FileName
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'identity-billing-reporter/version'

Gem::Specification.new do |s|
  s.name = 'identity-billing-reporter'
  s.version = BillingReporter::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = [
    'Steve Urciuoli <steve.urciuoli@gsa.gov>',
    'Jonathan Hooper <jonathan.hooper@gsa.gov>',
  ]
  s.email = 'hello@login.gov'
  s.homepage = 'http://github.com/18F/identity-billing-reporter'
  s.summary = 'login.gov billing reporter'
  s.description = 'A utility for creating billing reports for login.gov partner agencies'
  s.date = Time.now.utc.strftime('%Y-%m-%d')
  s.files = Dir.glob('app/**/*') + Dir.glob('lib/**/*') + [
    'LICENSE.md',
    'README.md',
    'Gemfile',
    'identity-billing-reporter',
  ]
  s.license = 'LICENSE'
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.rdoc_options = ['--charset=UTF-8']

  s.add_dependency('dotenv')
  s.add_dependency('prawn')

  s.add_development_dependency('irb')
  s.add_development_dependency('pry-byebug')
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
  s.add_development_dependency('rubocop')
end
