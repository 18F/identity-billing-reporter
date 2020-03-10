$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'billing_reporter'

if ARGV.length != 6
  puts "Usage: ruby main.rb destination_dir year month sp.yml monthly_auths.json active_users.json"
  exit
end

BillingReporter::GenerateReports.new.call(
  dest_dir: ARGV[0],
  year: ARGV[1].to_i,
  month: ARGV[2].to_i,
  sp_yml: ARGV[3],
  auths_json: ARGV[4],
  active_users_json: ARGV[5]
)
