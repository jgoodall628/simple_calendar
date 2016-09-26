module SimpleCalendar
  module ViewHelpers
    def calendar(options={}, &block)
      raise 'calendar requires a block' unless block_given?
      SimpleCalendar::Calendar.new(self, options).render(&block)
    end

    def month_calendar(options={}, &block)
      raise 'month_calendar requires a block' unless block_given?
      SimpleCalendar::MonthCalendar.new(self, options).render(&block)
    end

    def week_calendar(options={}, &block)
      raise 'week_calendar requires a block' unless block_given?
      SimpleCalendar::WeekCalendar.new(self, options).render(&block)
    end

    def day_calendar(options={}, &block)
      raise 'day_calendar requires a block' unless block_given?
      SimpleCalendar::DayCalendar.new(self, options).render(&block)
    end

    def hour_range(start_date)
      starting = start_date.to_date
      ending = start_date.to_time + 1.day

      changing = starting
      range = []
      while changing < ending
        range << changing
        changing += 1.hour
      end
      range
    end
  end
end
