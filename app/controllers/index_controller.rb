class IndexController < ApplicationController
  def index
    @page=Page.find_by name: "index"
  end

  def about
    @page=Page.find_by name: "about"
  end

  def contact
    @page=Page.find_by name: "contact"
  end
end
