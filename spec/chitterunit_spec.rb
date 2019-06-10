require 'peeps'

describe Peeps do
  describe '.all' do
    it 'returns all peeps' do
      connection = PG.connect(dbname: 'chitter_manager_test')

      connection.exec("INSERT INTO chitter (peep) VALUES ('my first peep');")
    connection.exec("INSERT INTO chitter (peep) VALUES('my second peep');")
    connection.exec("INSERT INTO chitter (peep) VALUES('my third peep');")

      expect(peeps).to include("my first peep")
      expect(peeps).to include("my second peep")
      expect(peeps).to include("my third peep")

    end
  end
end
