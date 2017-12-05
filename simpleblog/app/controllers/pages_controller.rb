class PagesController < ApplicationController
  def about
    @title = 'About us'
    @contact = 'This is the principal page.'
  end
end
