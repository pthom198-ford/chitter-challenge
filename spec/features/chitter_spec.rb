feature 'Viewing peeps' do
  # scenario 'visiting the chitter homepage' do
  #   visit ('/chitter')
  #   expect(page). to have_content "Chitter Homepage!"
  # end

  scenario 'A user can see peeps' do
    visit ('/chitter')

    expect(page). to have_content "my first peep"
    expect(page). to have_content "my second peep"
    expect(page). to have_content "my third peep"
  end
end

feature 'posting peeps' do
  scenario 'A user can submit peeps using button' do
    visit ('/chitter')

    fill_in('peep', with: 'my fourth peep')
    click_button('post')
    expect(page). to have_content('my fourth peep')
  end
end
