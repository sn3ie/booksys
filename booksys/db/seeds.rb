# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# coding: utf-8

require 'csv'

CSV.foreach('db/bookdate.csv') do |row|
 Book.create(:bar_no => row[0], :link_no => row[1],
  :title => row[2], :title_yomi => row[3], :series => row[4], :series_yomi => row[5],
  :volume => row[6], :author => row[7], :author_yomi => row[8], :publisher => row[9],
  :publisher_yomi => row[10], :p_ymd => row[11], :price => row[12], :isbn1_issn => row[13],
  :isbn2 => row[14], :types => row[15], :collection => row[16], :label1 => row[17],
  :label2 => row[18], :label3 => row[19], :status => row[20], :lend_date => row[21],
  :back_date => row[22], :lend_flg => row[23], :user_id => row[24], :memo => row[25])
end