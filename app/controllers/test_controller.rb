class TestController < ApplicationController
  before_action :piyo

  def index
    p "てすと"
  end

private

  def piyo
    p "🐣" * 100
  end
end