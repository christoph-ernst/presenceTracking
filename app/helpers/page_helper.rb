module PageHelper
  def calendar (month, year)
    current_date = Date.new(year, month, 1)

    prev_month = month - 1
    prev_year = year
    if (prev_month <= 0)
      prev_month = 12
      prev_year = year - 1
    end

    next_month = month + 1
    next_year = year
    if (next_month >= 13)
      next_month = 1
      next_year = year + 1
    end


    cal = ""


    cal += link_to "Prev ", "/page/calendar?month=#{prev_month}&year=#{prev_year}"
    cal += current_date.strftime("%B")
    cal += link_to " Next", "/page/calendar?month=#{next_month}&year=#{next_year}"
    cal += "<br/><br/>"
    current_date = Date.new(year, month, 1)
    last_day_in_month = Date.new(year, month,-1).mday
    day_of_week = current_date.strftime("%u").to_i
    days = %w(Mo Di Mi Do Fr Sa So)
    cal += "<table class=\"table table-responsive\"><tr>"
    days.each do | day |
      cal += "<td> #{day} </td>"
    end
    #Second row - first week of the month
    cal += "<tr>"

    (day_of_week - 1).times do |day|
      cal += "<td>&nbsp</td>"
    end

    #Print the days of week starting with one

    (7 - day_of_week +1 ).times do |day|
      cal += "<td>#{day+1}</td>"
    end

    # Loop to do the in between row



    # Final loop to do the last row



    cal += "</tr>"
    cal += "</tr></table>"
    cal += "Month: #{month}<br/>"
    cal += "Year: #{year}<br/>"
    cal += "CurrentDate: #{current_date}<br/>"
    cal += "Last Day in Month: #{last_day_in_month}<br/>"
    cal += "1st day of the week: #{day_of_week.to_s}"
  end
end
