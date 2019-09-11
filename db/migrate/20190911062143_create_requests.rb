class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
    	t.belongs_to :recrutement
    	t.belongs_to :user

      t.timestamps
    end
  end
end
