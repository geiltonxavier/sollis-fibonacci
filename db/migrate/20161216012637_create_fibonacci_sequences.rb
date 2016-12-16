class CreateFibonacciSequences < ActiveRecord::Migration[5.0]
  def change
    create_table :fibonacci_sequences do |t|
      t.integer :quantidade

      t.timestamps
    end
  end
end
