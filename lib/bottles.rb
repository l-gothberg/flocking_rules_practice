class Bottles

  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    "#{container_count(number).capitalize} #{container(number)} of beer on the wall, " +
    "#{container_count(number)} #{container(number)} of beer.\n" +
    buy_more?(number) +
    "#{container_count(number-1)} #{container(number - 1)} of beer on the wall.\n"
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def container_count(number)
    if number == 0
      "no more"
    elsif number < 0
      "99"
    else
      number.to_s
    end
  end

  def it_or_one(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def buy_more?(number)
    if number == 0
      "Go to the store and buy some more, "
    else
      "Take #{it_or_one(number)} down and pass it around, "
    end

  end

end
