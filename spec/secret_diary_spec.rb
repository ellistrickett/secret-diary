require 'secret_diary'
RSpec.describe SecretDiary do 

  # it {is_expected.to respond_to(:add_entry).with(1).argument}

  context 'when locked' do 
    before do 
      locked = true
    end
    it 'raises an error when try to add entry' do 
      expect{ subject.add_entry(1) }.to raise_error 'Cannot add entry: Diary is locked'
    end
    it 'raises an error when try to get entries' do 
      expect { subject.get_entries }.to raise_error 'Cannot get entries: Diary is locked'
    end
    it 'unlocks the diary' do 
      subject.unlock
      expect(subject.locked).to be false
    end
  end
end