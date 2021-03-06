# frozen_string_literal: true

# == Schema Information
#
# Table name: playbooks
#
#  id          :bigint           not null, primary key
#  config      :jsonb
#  description :string
#  luck_effect :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :playbook do
    name { 'The Nameless' }
    description { 'A nameless playbook for a nameless entity.' }
    luck_effect { 'When you spend a point of Luck, lose a point of luck.' }

    trait :with_backstory do
      config { {backstory: {name: "Fate", headings: [{name: "How you found out.", count: 1, choices: ["Nightmares and visions", "Some weirdo told you."]  }]}
    }.to_json }
    end
  end
end
