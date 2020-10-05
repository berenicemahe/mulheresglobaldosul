class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :contact, :historia]

  def home
  end

  def about
  end

  def contact
  end

  def historia
  end
end
