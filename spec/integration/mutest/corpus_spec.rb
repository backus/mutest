RSpec.describe 'Mutest on ruby corpus', mutest: false do
  before do
    skip 'Corpus test is deactivated on < 2.1' if RUBY_VERSION < '2.1'
    skip 'Corpus test is deactivated on RBX' if RUBY_ENGINE.eql?('rbx')
  end

  MutestSpec::Corpus::Project::ALL.select(&:mutation_generation).each do |project|
    specify "#{project.name} does not fail on mutation generation" do
      project.verify_mutation_generation
    end
  end

  MutestSpec::Corpus::Project::ALL.select(&:mutation_coverage).each do |project|
    specify "#{project.name} does have expected mutation coverage" do
      project.verify_mutation_coverage
    end
  end
end
