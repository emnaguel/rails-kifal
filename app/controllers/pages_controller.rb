class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :note]

  def home
  end

  def note
  end
end
