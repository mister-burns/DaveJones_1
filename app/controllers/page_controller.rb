class PageController < ApplicationController
  def home
  end

  def about
  end

  def recipes
  end

  def products
  end

  def articles
  end

  def calendar
    @year = params[:year]
    @month = params[:month]
    @my_time = Time.now
    @name = "Dave Jones"
    @products = %w(Skiis boots poles mittens mask hat)
      # = [ "Skiis", "boots",...]
  end

  def blog
  end

  def login
  end
end
