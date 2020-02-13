$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'identity-billing-reporter'

BillingReporter::GenerateReports.new.call(
  dest_dir: ARGV[1],
  year: ARGV[2].to_i,
  month: ARGV[3].to_i,
  auths_json: ARGV[4],
  sp_yml: ARGV[5]
)
