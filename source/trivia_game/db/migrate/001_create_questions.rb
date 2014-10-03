
class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question, :correctness, :country
      t.timestamps
    end
  end
end

