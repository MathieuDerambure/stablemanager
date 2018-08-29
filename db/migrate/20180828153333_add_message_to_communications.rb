class AddMessageToCommunications < ActiveRecord::Migration[5.2]
  def change
    add_column :communications, :message, :text
  end
end
