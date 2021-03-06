class ThemesController < ApplicationController

  def index
    @themes = Theme.all.order('created_at DESC')
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    if @theme.save
      redirect_to root_path
      flash[:notice] = "お題を作成しました。"
    else
      redirect_to root_path
      flash[:alert] = "お題の作成に失敗しました。"
    end
  end

  private
  def theme_params
    params.require(:theme).permit(:word, :choice1, :choice2, :choice3, :choice4, :choice5, :choice6, :choice7, :choice8)
  end
end
