class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def sch
  end
  def DetailBook
  end
  def DetailMag
  end
  def RegBook
  end
  def EntryUser
  end
  
  # GET /books
  # GET /books.json
  def index
#    @books = Book.page(params[:page])
#   
    @books = Book.page(params[:page]).search(params[:search]).where.not(bar_no: nil)
  end
 
  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.コールバックを使用して、アクション間で共通の設定や制約を共有します。
    #特定のIDのデータを取得したい
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.怖いインターネットからのパラメータを決して信用せず、ホワイトリストだけを許可する。
    #require メソッドを利用することで、引数に設定した key の 値だけを取得することができます。
    #permit メソッドは許可したいパラメータだけをフィルタしてくれます。
    def book_params
      params.require(:book).permit(:bar_no, :link_no, :title, :title_yomi, :series, :series_yomi, :volume, :author, :author_yomi, :publisher, :publisher_yomi, :p_ymd, :price, :isbn1_issn, :isbn2, :types, :collection, :label1, :label2, :label3, :status, :lend_date, :back_date, :lend_flg, :user_id, :memo)
    end
end

