require 'rails_helper'

describe 'when user goes to index sees astronauts'  do
  it 'should sees astronauts' do
    apollo = Mission.new(title: "Apollo 13", time_in_space: 32)
    capricorn = Mission.new(title: "Capricorn 4", time_in_space: 75)
    gemini = Mission.new(title: "Gemini 7", time_in_space: 50)
    neil = Astronaut.new(name: "Neil Armstrong", age: 37, job: "Commander", missions: [apollo, capricorn, gemini])

    visit '/astronauts'

      expect(page).to have_content("Name #{neil.name}")
      expect(page).to have_content("Age #{neil.age}")
      expect(page).to have_content("Job #{neil.job}")
  end
end
