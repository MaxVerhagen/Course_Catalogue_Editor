# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

course_catalogue_data = File.read(Rails.root.join('lib', 'seeds', 'course_catalogue.csv'), encoding: 'ISO-8859-1')
organisation_data = File.read(Rails.root.join('lib', 'seeds', 'organisation.csv'), encoding: 'ISO-8859-1')
course_offering_data = File.read(Rails.root.join('lib', 'seeds', 'course_offering.csv'), encoding: 'ISO-8859-1')
ownership_data = File.read(Rails.root.join('lib', 'seeds', 'offering_ownership.csv'), encoding: 'ISO-8859-1')

course_catalogue_table = CSV.parse(course_catalogue_data, headers: true)
organisation_table = CSV.parse(organisation_data, headers: true)
course_offering_table = CSV.parse(course_offering_data, headers: true)
ownership_table = CSV.parse(ownership_data, headers: true)

admins = [
		{:username => 'test1', :password => '123'},
		{:username => 'test2', :password => '123'},
		{:username => 'test3', :password => '123'}
	]
	admins.each do |attributes|
        Admin.find_or_create_by! attributes
    end

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

organisation_table.each do |row|
	o = Organisation.new
	o.effective_date = Date.parse(row['Eff_Date'])
	o.name = row["Acad_Org"]
	row['Status'] == "I" ? o.status = false : o.status = true
	o.description = row["Descr"]
	o.short_description = row["Short_Desc"]
	o.formal_description = row["FormalDesc"]

	o.save
	puts "#{o.description}, #{o.name} saved"
end

course_offering_table.each do |row|
	o = Offering.new
	o.admin_course_id = row["Course_ID"].to_i
	o.offering_number = row["Offer_Nbr"].to_i
	o.subject = row["Subject"]
	o.catalogue_num = row["Catalogue"]
	o.campus = row["Campus"]
	o.schedule_course = row["Schedule_Course"]
	o.course = Course.find_by(admin_course_id: o.admin_course_id)

	o.save
	puts "#{o.subject}, #{o.admin_course_id}, #{o.offering_number} saved"
end

ownership_table.each do |row|
	o = Offering.find_by(admin_course_id: row["Course_ID"], offering_number: row["Offer_Nbr"])
	org = Organisation.find_by(name: row["Offering_Acad_Org"])

	if Ownership.find_by(offering_id: o.id) != nil then
		org = Organisation.find_by(name: row["Owner_Acad_Org"])
	end

	o.organisations << org

	ow = Ownership.last()

	if row["Pct_Owned"] != "" then
		ow.percentage_owned = row["Pct_Owned"].to_i
	else
		ow.percentage_owned = 100
	end

	ow.save
	puts "#{row['Course_ID']}, #{row['Offer_Nbr']}, #{ow.percentage_owned} saved"
end
