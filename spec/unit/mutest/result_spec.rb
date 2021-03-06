RSpec.describe Mutest::Result do
  let(:object) do
    Class.new do
      include Mutest::Result, Concord.new(:runtime, :killtime)

      def collection
        [[1]]
      end

      sum :length, :collection
    end.new(3.0, 1.0)
  end

  describe '.included' do
    it 'includes mixin to freeze instances' do
      expect(object.frozen?).to be(true)
    end

    it 'makes DSL methods from Mutest::Result available' do
      expect(object.length).to be(1)
    end
  end

  describe '#overhead' do
    subject { object.overhead }

    it 'returns difference between runtime and killtime' do
      is_expected.to be(2.0)
    end
  end
end
