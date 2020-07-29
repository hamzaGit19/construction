namespace :one_time_tasks do
  desc "One time tasks."

  task create_questions: :environment do
    Question.destroy_all

    q = Question.new(text: 'History of the site', category: 'source', sub_category: 'history_of_site', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'None')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Airport')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Animal and animal products process works')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Asbestos manufacturing works ')
    q.save

    q = Question.new(text: 'The surrounding area the Northern', category: 'source', sub_category: 'surrounding_area', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'None')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Industrial')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Residential')
    q.save

    q = Question.new(text: 'The surrounding area the Southern', category: 'source', sub_category: 'surrounding_area', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'None')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Industrial')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Residential')
    q.save

    q = Question.new(text: 'The surrounding area the Eastern', category: 'source', sub_category: 'surrounding_area', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'None')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Industrial')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Residential')
    q.save

    q = Question.new(text: 'The surrounding area the Western', category: 'source', sub_category: 'surrounding_area', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'None')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Industrial')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Residential')
    q.save

    q = Question.new(text: 'Buildings and other structures', category: 'source', sub_category: 'surrounding_area', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Yes')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'No')
    q.save

    q = Question.new(text: 'Underground Services', category: 'source', sub_category: 'underground_services', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'All')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Water pipes and sewers')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Gas pipes')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Electricity cables')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Telecommunication cables')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'None')
    q.save

    q = Question.new(text: 'Storage of materials and old tanks', category: 'source', sub_category: 'storage_of_materials', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Yes')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'No')
    q.save


    q = Question.new(text: 'Previous mining activities', category: 'source', sub_category: 'mining_activity', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Yes')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'No')
    q.save

    q = Question.new(text: 'Presence of Radon', category: 'source', sub_category: 'radon', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Yes')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'No')
    q.save

    q = Question.new(text: 'Invasive species', category: 'source', sub_category: 'invasice_species', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'All')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Invasive plants')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Invasive animals')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'None')
    q.save

    q = Question.new(text: 'Made ground', category: 'source', sub_category: 'made_ground', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Yes')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'No')
    q.save


    q = Question.new(text: 'Soil Type', category: 'pathway', sub_category: 'soil_type', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'None')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Clean gravel')
    q.save

    q = Question.new(text: 'Soil Thickness', category: 'pathway', sub_category: 'soil_thickness', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'None')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Very thickly')
    q.save

    q = Question.new(text: 'Presence of groundwater', category: 'pathway', sub_category: 'ground_water', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Yes')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'No')
    q.save

    q = Question.new(text: 'Presence of surface water', category: 'pathway', sub_category: 'surface_water', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Yes')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'No')
    q.save

    q = Question.new(text: 'Site located in flood zone', category: 'pathway', sub_category: 'flooding_zone', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Yes')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'No')
    q.save

    q = Question.new(text: 'Site Topography', category: 'pathway', sub_category: 'topography', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Yes')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'No')
    q.save

    q = Question.new(text: 'Future site use', category: 'receptor', sub_category: 'future_use', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'None')
    q.options.create(hazards: 'There will be a long paragraph here. Remove me, and fill me again please.', text: 'Clean gravel')
    q.save

    puts 'Basic questions with options created. Please add the description after logging in.'
  end
end
