class StaticPagesController < ApplicationController
  def home
    @consoles = Console.all
  end

  def help
  end

  def contact
  end

  def about
  end

  def faq
  end

  def howto
  end
end
