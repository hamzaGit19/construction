namespace :one_time_tasks do
  desc "One time tasks."

  task create_questions: :environment do
    q = Question.new(text: 'History of the site', category: 'source', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'This is a test hazard', text: 'None')
    q.options.create(hazards: 'This is a test hazard', text: 'Airport')
    q.options.create(hazards: 'This is a test hazard', text: 'Animal and animal products process works')
    q.options.create(hazards: 'This is a test hazard', text: 'Asbestos manufacturing works ')
    q.save

    q = Question.new(text: 'The surrounding area the Northern', category: 'source', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'This is a test hazard', text: 'None')
    q.options.create(hazards: 'This is a test hazard', text: 'Industrial')
    q.options.create(hazards: 'This is a test hazard', text: 'Residential')
    q.save

    q = Question.new(text: 'The surrounding area the Southern', category: 'source', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'This is a test hazard', text: 'None')
    q.options.create(hazards: 'This is a test hazard', text: 'Industrial')
    q.options.create(hazards: 'This is a test hazard', text: 'Residential')
    q.save

    q = Question.new(text: 'The surrounding area the Eastern', category: 'source', view_type: 'dropdown')
    q.save
    q.options.create(hazards: 'This is a test hazard', text: 'None')
    q.options.create(hazards: 'This is a test hazard', text: 'Industrial')
    q.options.create(hazards: 'This is a test hazard', text: 'Residential')
    q.save

    q = Question.new(text: 'Buildings and other structures', category: 'source', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'This is a test hazard', text: 'Yes')
    q.options.create(hazards: 'This is a test hazard', text: 'No')
    q.save

    q = Question.new(text: 'Storage of materials and old tanks', category: 'source', view_type: 'checkbox')
    q.save
    q.options.create(hazards: 'This is a test hazard', text: 'Yes')
    q.options.create(hazards: 'This is a test hazard', text: 'No')
    q.save
  end

  task create_user: :environment do
    u = User.new(email: 'admin_user@construction.com', password:'Password123#', password_confirmation:'Password123#')
    u.save!
  end
end
