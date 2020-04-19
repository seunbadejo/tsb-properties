class CreateSecurityQuestion < ActiveRecord::Migration[6.0]
  def change
    create_table :security_questions do |t|
      t.string :locale, null: false
      t.string :name, null: false
    end
  end
end
