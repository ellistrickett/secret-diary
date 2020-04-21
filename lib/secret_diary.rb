class SecretDiary

  attr_reader :locked

  def initialize
    @locked = true
  end

  def add_entry(entry)
    raise 'Cannot add entry: Diary is locked' if @locked == true
  end

  def get_entries
    raise 'Cannot get entries: Diary is locked' if @locked == true
  end
  
  def unlock
    @locked = false
  end

end