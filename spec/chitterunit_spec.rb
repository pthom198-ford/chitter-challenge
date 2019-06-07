require 'peeps'

describe Peeps do
  describe '.all' do
    it 'returns all peeps' do
      peeps = Peeps.all

      expect(peeps).to include("my first peep")
      expect(peeps).to include("my second peep")
      expect(peeps).to include("my third peep")

    end
  end
end
