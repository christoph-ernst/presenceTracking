class PageController < ApplicationController
  def home
  end

  def calendar
    @time = Time.now
  end

  def presence
  end

  def statistics
  end

  def admin
  end
end
