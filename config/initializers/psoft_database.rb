PSOFT_DB = YAML::load(ERB.new(File.read(Rails.root.join("config","psoft_database.yml"))).result)[Rails.env]
