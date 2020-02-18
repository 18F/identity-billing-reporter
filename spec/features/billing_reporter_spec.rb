feature 'Billing reporter' do
  it 'works' do
    BillingReporter::GenerateReports.new.call(
        dest_dir: '.',
        year: 2020,
        month: 1,
        auths_json: 'spec/fixtures/total_monthly_auths.json',
        sp_yml: 'spec/fixtures/service_providers.yml',
        )
    confirm_exists_and_unlink(
        'billing-report.test agency 1.urn-gov-login-test-providers-fake-prod-sp.pdf',
        )
    confirm_exists_and_unlink(
        'billing-report.test agency 2.urn-gov-login-test-providers-fake-staging-sp.pdf',
        )
    confirm_exists_and_unlink(
        'billing-report.test agency 3.urn-gov-login-test-providers-fake-unrestricted-sp.pdf',
        )
  end

  def confirm_exists_and_unlink(fn)
    expect(File.exist?(fn)).to eq(true)
    File.unlink(fn)
  end
end
