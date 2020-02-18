$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'billing_reporter'

if ARGV.length < 5
  puts "Usage: ruby main.rb destination_directory year month total_monthly_auths.json sp.yml"
  exit
end

BillingReporter::GenerateReports.new.call(
  dest_dir: ARGV[0],
  year: ARGV[1].to_i,
  month: ARGV[2].to_i,
  auths_json: ARGV[3],
  sp_yml: ARGV[4]
)
