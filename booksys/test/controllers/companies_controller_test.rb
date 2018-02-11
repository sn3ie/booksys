require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { author: @company.author, author_yomi: @company.author_yomi, back_date: @company.back_date, bar_no: @company.bar_no, collection: @company.collection, isbn1_issn: @company.isbn1_issn, isbn2: @company.isbn2, label1: @company.label1, label2: @company.label2, label3: @company.label3, lend_date: @company.lend_date, lend_flg: @company.lend_flg, link_no: @company.link_no, memo: @company.memo, p_ymd: @company.p_ymd, price: @company.price, publisher: @company.publisher, publisher_yomi: @company.publisher_yomi, series: @company.series, series_yomi: @company.series_yomi, status: @company.status, title: @company.title, title_yomi: @company.title_yomi, type: @company.type, user_id: @company.user_id, volume: @company.volume }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { author: @company.author, author_yomi: @company.author_yomi, back_date: @company.back_date, bar_no: @company.bar_no, collection: @company.collection, isbn1_issn: @company.isbn1_issn, isbn2: @company.isbn2, label1: @company.label1, label2: @company.label2, label3: @company.label3, lend_date: @company.lend_date, lend_flg: @company.lend_flg, link_no: @company.link_no, memo: @company.memo, p_ymd: @company.p_ymd, price: @company.price, publisher: @company.publisher, publisher_yomi: @company.publisher_yomi, series: @company.series, series_yomi: @company.series_yomi, status: @company.status, title: @company.title, title_yomi: @company.title_yomi, type: @company.type, user_id: @company.user_id, volume: @company.volume }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
