require 'simplecov'
SimpleCov.start
require 'note'

describe Note do
  
  note_formatter = NoteFormatter.new
  subject { described_class.new('Today\'s things', 'To mop, cook, play', note_formatter) }
  
  it 'has a tile when initialized' do
    expect(subject.title).to eq 'Today\'s things'
  end

  it 'has a body when initialized' do
    expect(subject.body).to eq 'To mop, cook, play'
  end

  describe '#display' do
    it 'formats the note' do
      expect(subject.display).to eq "Title: #{subject.title}""\n""#{subject.body}"
    end
  end
end