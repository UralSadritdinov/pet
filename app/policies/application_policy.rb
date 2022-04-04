class ApplicationPolicy < ActionPolicy::Base

  private

   def owner?
    binding.pry
     record.user_id == user.id
   end
end
