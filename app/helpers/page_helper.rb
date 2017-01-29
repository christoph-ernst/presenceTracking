module PageHelper
  def calendar
    days = %w(Mo Di Mi Do Fr Sa So)
    cal = "<table border='1'><tr>"
    days.each do | day |
      cal += "<td> #{day} </td>"
    end
    cal += "</tr></table>"
  end
end
