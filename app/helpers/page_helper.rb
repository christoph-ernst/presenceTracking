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

    current_date = Date.new(year, month, 1)
    last_day_in_month = Date.new(year, month,-1).mday
    day_of_week = current_date.strftime("%u").to_i
    days_to_list = last_day_in_month - ( 7 - day_of_week +1  )
    es_fehlen = 7 - (last_day_in_month % 7) - day_of_week + 1
    month_start_day = day_of_week
    days_to_display = last_day_in_month+day_of_week-1
    rows_to_draw = (days_to_display / 7.0).ceil
    days = %w(Mo Di Mi Do Fr Sa So)


    cal = ""
#    cal += "Month: #{month}<br/>"
#    cal += "Year: #{year}<br/>"
#    cal += "CurrentDate: #{current_date}<br/>"
#    cal += "Last Day in Month: #{last_day_in_month}<br/>"
#    cal += "1st day of the week: #{day_of_week.to_s}<br/>"
#    cal += "noch verbleibende Tage: #{days_to_list.to_s}<br/>"
#    cal += "tabelle abschliessen #{es_fehlen.to_s}<br/>"
#    cal += "Der erste im Monat: #{month_start_day}<br/>"
#    cal += "Tage die anzuzeigen sind: #{days_to_display}<br/>"
#    cal += "Zeilen die anzuzeigen sind: #{rows_to_draw.to_s}<br/>"
#    cal += "<br/><br/>"
#    cal += "<br/><br/>"

    cal += link_to "Prev ", calendar_path(:month => prev_month, :year => prev_year), class: "btn btn-default active"
    cal += link_to " Next", calendar_path(:month => next_month, :year => next_year), class: "btn btn-default active"

    cal += "<table class=\"table-condensed table-bordered table-striped\">"
    cal += "<thead>"
    cal += "<tr>"
    cal += "<th colspan=\"7\">"
    cal += "<span class=\"btn-group\">"
    cal += "<a class=\"btn\"><i class=\"icon-chevron-left\">"
    cal += "</i></a>"
    cal += "<a class=\"btn active\">"
    cal += "#{current_date.strftime("%B")} #{year}"
    cal += "</a>"

    cal += "<a class=\"btn\"><i class=\"icon-chevron-right\">"
    cal += "</i></a>"

    cal += "</span>"
    cal += "</th>"
    cal += "</tr>"
    cal += "<tr>"
    days.each do | day |
      cal += "<th> #{day} </th>"
    end
    cal += "</tr>"
    cal += "</thead>"
    days_displayed = 0

    rows_to_draw.times do |myrow|
      cal += "<tr>"
        7.times do |myDay|
          days_displayed = days_displayed + 1
          if ((days_displayed < month_start_day) | (days_displayed-month_start_day >= last_day_in_month) )
            cal += "<td>&nbsp</td>"
          else
            cal += "<td>#{days_displayed-month_start_day+1}</td>"
          end
      end
      cal += "</tr>"
    end
    cal += "</table>"
  end
end
