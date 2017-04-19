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
    @players = Player.all
  end

  def statistics
  end

  def admin

    # @parameters hash.new
    # @parameters[first_name] = ""
    @form_error = false
    @submitted = params["commit"]
    @name = params["name"]
    if @name == ""
      @error_msg = "Must enter your name!"
      @form_error = true
    end
    @email = params["email"]

  end
end
