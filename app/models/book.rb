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

    # 種別による絞り込み
    scope :get_by_types, ->(types) {where(types: types)

    #.get_by_link_no をメソッドとして使えるようになる
    #scope(スコープ名, ->(引数){処理})  link_noがtrueのデータを表示
    #表示しているbar_no以外のデータを取得する方法は？
    scope :get_by_link_no, ->(link_no){find(:select => 'link_no')}
    
}
end