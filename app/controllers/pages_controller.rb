class PagesController < ApplicationController
  def home
    @variable = 4
  end

  def mapage
    @uneVariable = 2 + 2
  end

  def secondepage
    @uneAutreVariable = 20 * 8
  end
end
