module SimpleCalendar
  class DayCalendar < SimpleCalendar::Calendar
    private
    def date_range
      [start_date]
    end

  end
end
