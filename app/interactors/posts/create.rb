module Posts  
  class Create
    include Interactor::Organizer

    organize Posts::Create::PrepareParams,
      Posts::Save
  end
end