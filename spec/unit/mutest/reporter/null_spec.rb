RSpec.describe Mutest::Reporter::Null do
  let(:object) { described_class.new     }
  let(:value)  { instance_double(Object) }

  %i[progress report start warn].each do |name|
    describe "##{name}" do
      subject { object.public_send(name, value) }

      it_behaves_like 'a command method'
    end
  end
end
