RSpec.describe 'rspec integration', mutest: false do
  let(:base_cmd) { 'bundle exec mutest -I lib --require test_app --use rspec' }

  %w[3.4 3.5 3.6 3.7].each do |version|
    context "RSpec #{version}" do
      let(:gemfile) { "Gemfile.rspec#{version}" }

      it_behaves_like 'framework integration'
    end
  end
end
