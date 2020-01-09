class Session
  attr_accessor :session_number, :session_path, :is_session_on_archive


  @session_number
  @session_path
  @is_session_on_archive = false


  def get_session_from_user

    puts("Please enter the session number to restored:")
    session_entered = gets.chomp.to_i

    while (session_entered <= 0)
      puts("Invalid session number, try again - [POSITIVE NUMBERS ONLY]:")
      session_entered = gets.chomp.to_i
    end

    @session_number = session_entered

  end

  def set_session_path(session_no)
    session_no.to_s

    case session_no.to_s

    when /^103/
      puts("richmonts")

    when /^104/
      puts("Surrey")

    when /^105/
      puts("Willoughby")

    when /^106/
      puts("Rushcutters")

    when /^107/
      puts("Fortitude")

    when /^108/
      puts("Claremont")

    when /^109/
      puts("South Melbourne")

    else
      puts("something else")

    end

  end



end

while true

  session_to_restore = Session.new
  session_to_restore.get_session_from_user
  session_to_restore.set_session_path(session_to_restore.session_number)

end
