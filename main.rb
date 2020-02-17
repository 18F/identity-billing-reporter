$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'billing_reporter'

BillingReporter::GenerateReports.new.call(
  dest_dir: ARGV[0],
  year: ARGV[1].to_i,
  month: ARGV[2].to_i,
  auths_json: ARGV[3],
  sp_yml: ARGV[4]
)
