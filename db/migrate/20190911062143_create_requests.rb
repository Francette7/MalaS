class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
    	    t.text :nom
    	    t.text :prenom
    	    t.integer :age
    	    t.text :adresse
    	    t.text :contact
    	    t.text :parcours
    	t.belongs_to :recrutement
    	t.belongs_to :user

      t.timestamps
    end
  end
end
