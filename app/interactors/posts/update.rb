module Posts  
  class Update
    include Interactor::Organizer

    organize Posts::Update::PrepareParams,
      Posts::Save
  end
end