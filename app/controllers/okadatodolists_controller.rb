class OkadatodolistsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
    @okadalist = Okadalist.new
  end

  def create
    # １. データを新規登録するためのインスタンス作成
    okadalist = Okadalist.new(okadalist_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    okadalist.save
    # ３. トップ画面へリダイレクト
    redirect_to okada_path(okadalist.id)
  end

  def index
    @okadalists = Okadalist.all
  end

  def show
    @okadalist = Okadalist.find(params[:id])
  end

  def edit
    @okadalist = Okadalist.find(params[:id])
  end

  def update
    okadalist = Okadalist.find(params[:id])
    okadalist.update(okadalist_params)
    redirect_to okada_path(okadalist.id)
  end

  def destroy
    okadalist = Okadalist.find(params[:id]) # データ（レコード）を1件取得
    okadalist.destroy # データ（レコード）を削除
    redirect_to 'okadareotodolists' # 投稿一覧画面へリダイレクト
  end

  private
  # ストロングパラメータ
  def okadalist_params
    params.require(:okadalist).permit(:title, :body, :image)
  end
end
