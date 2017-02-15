class PageController < ApplicationController
  def home
  end

  def calendar
    @time = Time.now
    @month = params['month'].to_i
    @year = params['year'].to_i
   if ( @month < 1 || @month > 12 )
     @month = @time.mon
   end
   if (@year <= 0)
     @year = @time.year
   end

  end

  def presence
  end

  def statistics
  end

  def admin

    # @parameters hash.new
    # @parameters[first_name] = ""

    @name = params["name"]
    @email = params["email"]

  end
end
