# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

course_catalogue_data = File.read(Rails.root.join('lib', 'seeds', 'course_catalogue.csv'), encoding: 'ISO-8859-1')

course_catalogue_table = CSV.parse(course_catalogue_data, headers: true)

course_catalogue_table.each do |row|
	c = Course.new
	c.effective_date = Date.parse(row['Eff_Date'])
	c.admin_course_id = row['Course_ID'].to_i
	row['Status'] == "I" ? c.status = false : c.status = true
	c.short_title = row['Short_Title']
	c.long_title = row["Long_Title"]
	c.min_units = row["Min_Unit"].to_i
	c.max_units = row["Max_Unit"].to_i
	c.progress_units = row["Prgrss_Unt"].to_f
	c.grading = row["Grading"]
	row['Last_Crse'] == "N" ? c.last_course  = false : c.last_course  = true
	c.enrollment_unit_calc = row["Enrl_Unt_Calc"]
	c.description = row["Descr"]

	c.save
	puts "#{c.short_title}, #{c.admin_course_id} saved" 
end