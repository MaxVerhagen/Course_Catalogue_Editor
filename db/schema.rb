# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_19_020446) do

  create_table "acad_orgs", id: false, force: :cascade do |t|
    t.text "Acad_Org"
    t.text "Eff_Date"
    t.text "Status"
    t.text "Descr"
    t.text "Short_Desc"
    t.text "FormalDesc"
    t.text "Institution"
    t.text "Campus"
    t.text "MgrID"
    t.text "Instr_Edit"
    t.text "Campus_Edit"
    t.text "Subject_Edit"
    t.text "Course_Edit"
    t.text "AOU_Code"
    t.text "DeptID"
  end

  create_table "acad_plans", id: false, force: :cascade do |t|
    t.text "Acad_Group"
    t.text "Acad_Prog"
    t.text "Prog_Eff_Date"
    t.text "Acad_Plan"
    t.text "Eff_Date"
    t.text "Status"
    t.text "Descr"
    t.text "Short_Desc"
    t.text "Plan_Owner"
    t.text "Pct_Owned"
  end

  create_table "acad_progs", id: false, force: :cascade do |t|
    t.text "Acad_Prog"
    t.text "Descr"
    t.text "Acad_Org"
  end

  create_table "all_classes", id: false, force: :cascade do |t|
    t.text "Term"
    t.text "Course_ID"
    t.text "Offer_Nbr"
    t.text "Class_Nbr"
    t.text "Section"
    t.text "Enrl_Stat"
    t.text "Class_Stat"
    t.text "Assoc"
    t.text "Session"
    t.text "Auto_Enrol"
    t.text "Auto_Enr_2"
    t.text "Class_Type"
    t.text "Cap_Enrl"
    t.text "Tot_Enrl"
    t.text "Comb_Sects_ID"
    t.text "Combined_Sect_Cap_Enrl"
    t.text "Combined_Sect_Tot_Enrl"
  end

  create_table "ccat_catalogs", id: false, force: :cascade do |t|
    t.text "Eff_Date"
    t.text "Course_ID"
    t.text "Status"
    t.text "Short_Title"
    t.text "Long_Title"
    t.text "Min_Units"
    t.text "Max_Units"
    t.text "Prgrss_Unt"
    t.text "Grading"
    t.text "Last_Crse"
    t.text "Enrl_Unt_Calc"
    t.text "Descr"
  end

  create_table "ccat_components", id: false, force: :cascade do |t|
    t.text "Eff_Date"
    t.text "Course_ID"
    t.text "Offer_Nbr"
    t.text "Primary_Component"
    t.text "Enrol_Component"
    t.text "Final_Exam"
    t.text "Sect_Size"
    t.text "Contact"
    t.text "SPlus_Templates_Reqd"
    t.text "Component"
  end

  create_table "ccat_offerings", id: false, force: :cascade do |t|
    t.text "Eff_Date"
    t.text "Course_ID"
    t.text "Offer_Nbr"
    t.text "Acad_Group"
    t.text "Subject"
    t.text "Catalogue"
    t.text "Approved"
    t.text "Campus"
    t.text "Sch_Print"
    t.text "Cat_Print"
    t.text "Print"
    t.text "Acad_Org"
    t.text "Career"
    t.text "Schedule_Course"
    t.text "Band_ID"
    t.text "Rq_Group"
    t.text "Discp_Grp_Cd"
    t.text "Field_of_Ed_Cd"
  end

  create_table "ccat_owners", id: false, force: :cascade do |t|
    t.text "Eff_Date"
    t.text "Course_ID"
    t.text "Offer_Nbr"
    t.text "Offering_Acad_Org"
    t.text "Owner_Acad_Org"
    t.text "Pct_Owned"
  end

  create_table "ccat_publications", id: false, force: :cascade do |t|
    t.text "Eff_Date"
    t.text "Course_ID"
    t.text "Offer_Nbr"
    t.text "Contact_Hours_YN"
    t.text "Contact_Hours"
    t.text "Restriction_YN"
    t.text "Restriction"
    t.text "Avail_NAWD"
    t.text "Quota_YN"
    t.text "Quota"
    t.text "Pre-Requisite_YN"
    t.text "Pre-Requisite"
    t.text "Co-Requisite_YN"
    t.text "Co-Requisite"
    t.text "Assumed_Knowl_YN"
    t.text "Assumed_Knowl"
    t.text "Incompatible_YN"
    t.text "Incompatible"
    t.text "Assessment_YN"
    t.text "Assessment"
    t.text "Biennial_Course_YN"
    t.text "Biennial_Course"
  end

  create_table "ccat_schedulings", id: false, force: :cascade do |t|
    t.text "Eff_Date"
    t.text "Course_ID"
    t.text "Offer_Nbr"
    t.text "TTble_for_SPlus"
    t.text "Est_Enrol_Total"
    t.text "Enrol_Component"
    t.text "Summer_Semester"
    t.text "Semester_1"
    t.text "Winter_Semester"
    t.text "Semester_2"
    t.text "Trimester_1"
    t.text "Trimester_2"
    t.text "Trimester_3"
    t.text "Quadmester_1"
    t.text "Quadmester_2"
    t.text "Quadmester_3"
    t.text "Quadmester_4"
    t.text "PCE_1"
    t.text "PCE_2"
    t.text "PCE_3"
    t.text "Summer_Crse_Coordinator"
    t.text "Sem1_Crse_Coordinator"
    t.text "Winter_Crse_Coordinator"
    t.text "Sem2_Crse_Coordinator"
    t.text "Tri1_Crse_Coordinator"
    t.text "Tri2_Crse_Coordinator"
    t.text "Tri3_Crse_Coordinator"
    t.text "Quad1_Crse_Coordinator"
    t.text "Quad2_Crse_Coordinator"
    t.text "Quad3_Crse_Coordinator"
    t.text "Quad4_Crse_Coordinator"
    t.text "PCE1_Crse_Coordinator"
    t.text "PCE2_Crse_Coordinator"
    t.text "PCE3_Crse_Coordinator"
  end

  create_table "ccat_topics", id: false, force: :cascade do |t|
    t.text "Subject"
    t.text "Catalogue"
    t.text "Eff_Date"
    t.text "Course_ID"
    t.text "Topic_ID"
    t.text "Descr"
    t.text "Short_Desc"
    t.text "Repeatable"
    t.text "Allowd_Unt"
    t.text "Allow_Comp"
    t.text "FormalDesc"
  end

  create_table "full_enrolments", id: false, force: :cascade do |t|
    t.text "ID"
    t.text "Term"
    t.text "Class_Nbr"
    t.text "Status"
    t.text "Reason"
    t.text "Acad_Prog"
    t.text "Add_Dt"
    t.text "Drop_Dt"
    t.text "Unit_Taken"
    t.text "Progress"
    t.text "Grade"
    t.text "Grade_In"
    t.text "Grade_Dt"
    t.text "Sdt_Positn"
    t.text "Grd_Points"
    t.text "Note_ID"
    t.text "Rpt_Candidat"
  end

  create_table "psoft_db_bases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sp_activity_templates", id: false, force: :cascade do |t|
    t.text "hostkey"
    t.text "name"
    t.text "description"
    t.text "department"
    t.text "linkq"
    t.text "size"
    t.text "module"
    t.text "factor"
    t.text "planned_size"
    t.text "duration"
    t.text "weeks"
    t.text "named_availability"
    t.text "activity_type"
    t.text "suggested_time"
    t.text "suggested_time_pattern"
    t.text "suggested_day"
    t.text "preset_staff_number"
    t.text "preset_staff"
    t.text "preset_locations_number"
    t.text "preset_location"
    t.text "preset_suitability"
    t.text "tag"
    t.text "unavailable"
    t.text "usertext1"
    t.text "usertext4"
  end

  create_table "sp_activity_types", id: false, force: :cascade do |t|
    t.text "hostkey"
    t.text "name"
    t.text "description"
    t.text "department"
    t.text "usertext1"
    t.text "usertext4"
  end

  create_table "sp_activitys", id: false, force: :cascade do |t|
    t.text "hostkey"
    t.text "name"
    t.text "description"
    t.text "department"
    t.text "linkq"
    t.text "size"
    t.text "module"
    t.text "factor"
    t.text "studentset"
    t.text "sametime"
    t.text "activity_template"
    t.text "planned_size"
    t.text "duration"
    t.text "weeks"
    t.text "named_availability"
    t.text "scheduled"
    t.text "scheduled_time"
    t.text "activity_type"
    t.text "suggested_time"
    t.text "suggested_time_pattern"
    t.text "suggested_day"
    t.text "allocated_staff"
    t.text "allocated_location"
    t.text "allocated_studentset"
    t.text "allocated_module"
    t.text "preset_staff_number"
    t.text "preset_staff"
    t.text "preset_locations_number"
    t.text "preset_location"
    t.text "preset_suitability"
    t.text "preset_module"
    t.text "tag"
    t.text "unavailable"
    t.text "usertext1"
    t.text "usertext4"
    t.text "scheduled_week_pattern"
    t.text "scheduled_day_pattern"
    t.text "scheduled_time_pattern"
    t.text "class"
  end

  create_table "sp_departments", id: false, force: :cascade do |t|
    t.text "hostkey"
    t.text "name"
    t.text "description"
    t.text "department"
    t.text "usertext1"
    t.text "usertext4"
  end

  create_table "sp_locations", id: false, force: :cascade do |t|
    t.text "hostkey"
    t.text "name"
    t.text "description"
    t.text "department"
    t.text "size"
    t.text "weeks"
    t.text "unavailable"
    t.text "usertext1"
    t.text "usertext4"
    t.text "sharewith"
    t.text "avoidconcurrency"
    t.text "suitability"
  end

  create_table "sp_modules", id: false, force: :cascade do |t|
    t.text "hostkey"
    t.text "name"
    t.text "description"
    t.text "department"
    t.text "linkq"
    t.text "size"
    t.text "planned_size"
    t.text "weeks"
    t.text "named_availability"
    t.text "tag"
    t.text "unavailable"
    t.text "usertext1"
    t.text "usertext4"
    t.text "programme"
  end

  create_table "sp_suitabilitys", id: false, force: :cascade do |t|
    t.text "hostkey"
    t.text "name"
    t.text "description"
    t.text "department"
    t.text "location"
    t.text "usertext1"
    t.text "usertext4"
  end

  create_table "widgets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
