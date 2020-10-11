class CreateEnneagramTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :enneagram_types do |t|
      t.integer :type_result_id              
      t.integer :perfectionist_sum 
      t.integer :giver_sum         
      t.integer :achiever_sum      
      t.integer :individualist_sum 
      t.integer :investigator_sum  
      t.integer :skeptic_sum       
      t.integer :enthusiast_sum    
      t.integer :challenger_sum    
      t.integer :peacemaker_sum    
      t.timestamps
    end
  end
end
