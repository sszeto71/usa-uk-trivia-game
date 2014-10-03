
class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question, :answer #:country
      t.timestamps
    end
  end
end

