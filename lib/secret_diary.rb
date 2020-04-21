class SecretDiary

  attr_reader :locked
  attr_accessor :stored_entries

  def initialize
    @locked = true
    @stored_entries = []
  end

  def add_entry(entry)
    raise 'Cannot add entry: Diary is locked' if @locked == true
    @stored_entries << entry
  end

  def get_entries
    raise 'Cannot get entries: Diary is locked' if @locked == true
    @stored_entries
  end
  
  def unlock
    @locked = false
  end

  def lock
    @locked = true
  end

end