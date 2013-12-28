require 'csv'

WORD = 0
DEFINITION = 1

csv_filename = "#{Rails.root}" "/public/data/ngsl-utf8.csv"

CSV.foreach(csv_filename) do |row|
	Entry.create(word: row[WORD], definition: row[DEFINITION])
end