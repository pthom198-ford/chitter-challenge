require 'pg'

class Peeps
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_manager_test')
    else
      connection = PG.connect(dbname: 'chitter_manager')
    end
    result = connection.exec("SELECT * FROM chitter;")
    result.map { |peep| peep['peep'] }
  end

  def self.add(peep)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_manager_test')
    else
      connection = PG.connect(dbname: 'chitter_manager')
    end
      connection.exec("INSERT INTO chitter (peep) VALUES ('#{peep}');")
    end
end
