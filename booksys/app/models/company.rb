class Company < ActiveRecord::Base
  self.table_name='book_list'
  self.primary_key=:bar_no
  self.inheritance_column = nil
end
