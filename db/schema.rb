# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_190_717_082_330) do
  create_table 'classes', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'name'
    t.integer 'max_student'
    t.bigint 'department_id'
    t.index ['department_id'], name: 'index_classes_on_department_id'
  end

  create_table 'classes_users', id: false, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'class_id', null: false
  end

  create_table 'department_details', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'address'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'department_id'
    t.index ['department_id'], name: 'index_department_details_on_department_id'
  end

  create_table 'departments', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'name'
  end

  create_table 'departments_subjects', id: false, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.bigint 'subject_id'
    t.bigint 'department_id'
    t.index ['department_id'], name: 'index_departments_subjects_on_department_id'
    t.index %w[subject_id department_id], name: 'index_departments_subjects_on_subject_id_and_department_id'
    t.index ['subject_id'], name: 'index_departments_subjects_on_subject_id'
  end

  create_table 'group_users', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'groups', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'department_id'
    t.index ['department_id'], name: 'index_groups_on_department_id'
  end

  create_table 'groups_users', id: false, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'group_id', null: false
    t.index %w[user_id group_id], name: 'index_groups_users_on_user_id_and_group_id'
  end

  create_table 'new_tables', id: false, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.text 'new_comment'
  end

  create_table 'random_tables', options: 'ENGINE=BLACKHOLE DEFAULT CHARSET=utf8', comment: 'qwewqeqweqw', force: :cascade do |t|
  end

  create_table 'reviews', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'content'
    t.string 'reviewable_type'
    t.bigint 'reviewable_id'
    t.bigint 'reviewer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[reviewable_type reviewable_id], name: 'index_reviews_on_reviewable_type_and_reviewable_id'
    t.index ['reviewer_id'], name: 'index_reviews_on_reviewer_id'
  end

  create_table 'subjects', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'tests', primary_key: 'name', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'x'
  end

  create_table 'universities', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'name'
  end

  create_table 'users', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'type'
    t.integer 'role'
    t.string 'detail1'
    t.string 'detail2'
    t.decimal 'tuition_fee', precision: 5, scale: 2, default: '1.0'
    t.bigint 'university_id'
    t.index ['university_id'], name: 'index_users_on_university_id'
  end

  add_foreign_key 'classes', 'departments'
  add_foreign_key 'department_details', 'departments'
  add_foreign_key 'groups', 'departments'
  add_foreign_key 'users', 'universities'
end
