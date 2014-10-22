class CreateCronExamples < ActiveRecord::Migration
  def change
    create_table :cron_examples do |t|
			t.datetime :current_time
      t.timestamps
    end
  end
end
