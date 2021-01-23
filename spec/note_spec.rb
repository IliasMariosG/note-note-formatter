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

describe NoteFormatter do

  it 'formats the note with a new line between the title and end the body' do
    note = Note.new('This', 'That')
    # or
    # with the use of double
    # note = double('Note', :title => 'Today\'s errands', :body => 'I need to mop, cook')
    expect(subject.format(note)).to eq "Title: This""\n""That"
  end
end
