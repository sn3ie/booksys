class Book < ActiveRecord::Base
  self.table_name='book_list'
  self.primary_key=:bar_no
  def self.search(search) #ここでのself.はBook.を意味する
    if search
      where(['title LIKE ?', "%#{search}%"])    #検索とtitleの部分一致を表示。はBook.は省略
    else
      all #全て表示。Book.は省略
    end
end
end