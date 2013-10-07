module ApplicationHelper

=begin
  def calendar( month, year )
    prev_month = link_to "Previous", page_calendar_path(:month => month.to_i - 1)
    cal_str = "<table border='1'>"
    cal_str += "<tr><td>#{prev_month}</td><td colspan=7>October</td></tr>"
    cal_str += "<tr>"
    cal_str += "<td>&nbsp;</td>"
    6.times do |day|
        cal_str += "<td> #{day + 1}</td>"
    end
    cal_str += "</tr>"
    cal_str += "</table>"
    return cal_str.html_safe
  end
=end

  def calendar2( month, year )
    prev_month = link_to "Previous", calendar_path(:month => month.to_i - 1, :year => 2013)
    next_month = link_to "Next", calendar_path(:month => month.to_i + 1)

    if month.to_i < 13 && month.to_i > 0
      month_var = month.to_i
    else
      month_var = Date.today.month
    end

    if year.to_i < 2015 && year.to_i > 1900
      year_var = year.to_i
    else
      year_var = Date.today.year
    end

    date = DateTime.new(year_var,month_var,1)
    date = date.wday

    end_day = 0
    day_count = Time.days_in_month(month_var)
    cal_str = "<table border='1'>"
    cal_str += "<tr><td>#{prev_month}</td><td>#{Date::MONTHNAMES[month_var]}, #{year_var}</td><td colspan=4>#{next_month}</td></tr>"
    cal_str += "<tr>"

    date.times do
      cal_str += "<td>&nbsp;</td>"
    end

    (7 - date).times do |day|
      cal_str += "<td> #{day + 1}</td>"
      end_day = day + 1
    end
    cal_str += "</tr>"
    cal_str += "<tr>"
    7.times do |day|
      cal_str += "<td> #{day + 1 + end_day}</td>"
    end
    end_day = end_day + 7
    cal_str += "</tr>"
    cal_str += "<tr>"
    7.times do |day|
      cal_str += "<td> #{day + 1 + end_day}</td>"
    end
    end_day = end_day + 7
    cal_str += "</tr>"
    cal_str += "<tr>"
    7.times do |day|
      cal_str += "<td> #{day + 1 + end_day}</td>"
    end
    end_day = end_day + 7
    cal_str += "</tr>"

    if end_day > day_count
      cal_str += "</table>"
    else
      cal_str += "<tr>"
      7.times do |day|
        if (day + 1 + end_day) > day_count
          cal_str += "<td>&nbsp;</td>"
        else
          cal_str += "<td> #{day + 1 + end_day}</td>"
        end
      end
    end
    end_day = end_day + 7
    cal_str += "</tr>"

    if end_day > day_count
      cal_str += "</table>"
    else
      cal_str += "<tr>"
      7.times do |day|
        if (day + 1 + end_day) > day_count
          cal_str += "<td>&nbsp;</td>"
        else
          cal_str += "<td> #{day + 1 + end_day}</td>"
        end
      end
    end
    cal_str += "</tr>"
    cal_str += "</table>"
    cal_str += "<br/>#{month_var}"
    cal_str += "<br/>#{day_count}"
    cal_str += "<br/>#{date}"
    return cal_str.html_safe
  end



end
