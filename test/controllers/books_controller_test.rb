require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { author: @book.author, author_yomi: @book.author_yomi, back_date: @book.back_date, bar_no: @book.bar_no, collection: @book.collection, isbn1_issn: @book.isbn1_issn, isbn2: @book.isbn2, label1: @book.label1, label2: @book.label2, label3: @book.label3, lend_date: @book.lend_date, lend_flg: @book.lend_flg, link_no: @book.link_no, memo: @book.memo, p_ymd: @book.p_ymd, price: @book.price, publisher: @book.publisher, publisher_yomi: @book.publisher_yomi, series: @book.series, series_yomi: @book.series_yomi, status: @book.status, title: @book.title, title_yomi: @book.title_yomi, types: @book.types, user_id: @book.user_id, volume: @book.volume }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { author: @book.author, author_yomi: @book.author_yomi, back_date: @book.back_date, bar_no: @book.bar_no, collection: @book.collection, isbn1_issn: @book.isbn1_issn, isbn2: @book.isbn2, label1: @book.label1, label2: @book.label2, label3: @book.label3, lend_date: @book.lend_date, lend_flg: @book.lend_flg, link_no: @book.link_no, memo: @book.memo, p_ymd: @book.p_ymd, price: @book.price, publisher: @book.publisher, publisher_yomi: @book.publisher_yomi, series: @book.series, series_yomi: @book.series_yomi, status: @book.status, title: @book.title, title_yomi: @book.title_yomi, types: @book.types, user_id: @book.user_id, volume: @book.volume }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
