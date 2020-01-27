require 'time'
require 'pry'

class Event

  attr_accessor :start_date 
  attr_accessor :duration
  attr_accessor :title
  attr_accessor :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end 

  def is_past?
      if (@start_date + (@duration * 60)) < Time.now
      puts "l'événement est passé"
    else
      puts "l'événement n'est pas encore passé"
    end
  end

  def is_future?
    if @start_date > Time.now
      puts "l'événement est dans le futur"
    else
      puts "l'événement n'est pas dans le futur"
    end
  end

  def postpone_24h
    @start_date = @start_date + 86400
  end

  def is_soon?
    if (@start_date - Time.now) < 1800 && (@start_date - Time.now) > 0
      puts "Rappel : #{title} est dans moins de 30 minutes"
    else 
      puts "#{title} n'est pas dans moins de 30 minutes"
    end
  end

  def to_s
    puts ">Titre : #{title}"
    puts ">Date de début : #{start_date}"
    puts ">Durée : #{duration} minutes"
    puts ">Invités : #{attendees}"
  end
end

binding.pry

