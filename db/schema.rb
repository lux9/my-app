# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_17_182905) do

  create_table "absences", force: :cascade do |t|
    t.integer "employee_salary_id", null: false
    t.string "reason"
    t.string "type"
    t.date "absence_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_salary_id"], name: "index_absences_on_employee_salary_id"
  end

  create_table "assigned_equipments", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "amount"
    t.string "equipment_item"
    t.string "status"
    t.string "equipment_type"
    t.date "given_date"
    t.date "return_date"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_assigned_equipments_on_employee_id"
  end

  create_table "bonus_payments", force: :cascade do |t|
    t.integer "employee_salary_id", null: false
    t.integer "amount"
    t.string "reason"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_salary_id"], name: "index_bonus_payments_on_employee_salary_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_salaries", force: :cascade do |t|
    t.integer "amount"
    t.integer "employee_id", null: false
    t.string "status"
    t.string "final_amount"
    t.string "month"
    t.string "payment_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_employee_salaries_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer "job_id", null: false
    t.string "fname"
    t.string "lname"
    t.string "role"
    t.string "nationality"
    t.string "marital_status"
    t.string "mail"
    t.string "status"
    t.string "gender"
    t.integer "dni"
    t.integer "age"
    t.string "photo"
    t.string "health_insurance"
    t.date "start_date"
    t.date "birtday"
    t.date "end_date"
    t.string "transport"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_employees_on_job_id"
  end

  create_table "family_members", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.string "type"
    t.string "fname"
    t.string "lname"
    t.string "nationality"
    t.string "status"
    t.string "email"
    t.integer "age"
    t.integer "dni"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_family_members_on_employee_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "role"
    t.integer "employee_id", null: false
    t.integer "office_id", null: false
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_jobs_on_employee_id"
    t.index ["office_id"], name: "index_jobs_on_office_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "type"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_offices_on_company_id"
  end

  create_table "previous_jobs", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "reference_phone"
    t.string "company"
    t.string "role"
    t.string "reference_contact"
    t.date "start_date"
    t.date "end_date"
    t.string "reason"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_previous_jobs_on_employee_id"
  end

  create_table "required_equipments", force: :cascade do |t|
    t.integer "job_id", null: false
    t.string "quantity"
    t.string "equipment_item"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_required_equipments_on_job_id"
  end

  create_table "required_skills", force: :cascade do |t|
    t.string "status"
    t.string "name"
    t.integer "job_id", null: false
    t.string "description"
    t.string "reason"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_required_skills_on_job_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.integer "experience"
    t.string "status"
    t.integer "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_skills_on_employee_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.integer "dni"
    t.string "nationality"
    t.string "role"
    t.string "status"
    t.string "confirmation_key"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "absences", "employee_salaries"
  add_foreign_key "assigned_equipments", "employees"
  add_foreign_key "bonus_payments", "employee_salaries"
  add_foreign_key "employee_salaries", "employees"
  add_foreign_key "employees", "jobs"
  add_foreign_key "family_members", "employees"
  add_foreign_key "jobs", "employees"
  add_foreign_key "jobs", "offices"
  add_foreign_key "offices", "companies"
  add_foreign_key "previous_jobs", "employees"
  add_foreign_key "required_equipments", "jobs"
  add_foreign_key "required_skills", "jobs"
  add_foreign_key "skills", "employees"
end
