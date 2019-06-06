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
