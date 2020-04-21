class SecretDiary
  
  attr_accessor :stored_entries

  def initialize
    @locked = Security.new
    @stored_entries = []
  end

  def add_entry(entry)
    raise 'Cannot add entry: Diary is locked' if @locked.locked_bool == true
    @stored_entries << entry
  end

  def get_entries
    raise 'Cannot get entries: Diary is locked' if @locked.locked_bool == true
    @stored_entries
  end

  def unlock
    @locked.lock(false)
  end

  def lock
    @locked.lock(true)
  end
end

class Security

  attr_reader :locked_bool


  def initialize
    @locked_bool = true
  end

  def lock(input)
    @locked_bool = input
  end

end