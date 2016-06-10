require 'rails_helper'

describe CheckTranslation do
  before do
    @answer = '   lOl '
    @card = Card.create(original_text: 'Lol', translated_text: 'laugh')
  end

  it "#call tests answer and original text for equality" do
    interactor = CheckTranslation.call(answer: @answer, id: @card.id )
    expect(interactor).to be_a_success
    expect(interactor.notice).to eq "Correct"
  end
end