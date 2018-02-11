json.extract! company, :id, :bar_no, :link_no, :title, :title_yomi, :series, :series_yomi, :volume, :author, :author_yomi, :publisher, :publisher_yomi, :p_ymd, :price, :isbn1_issn, :isbn2, :type, :collection, :label1, :label2, :label3, :status, :lend_date, :back_date, :lend_flg, :user_id, :memo, :created_at, :updated_at
json.url company_url(company, format: :json)
