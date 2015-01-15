class Ability
  include CanCan::Ability

  def initialize(user)
    unless user
        can :read, :all
    else 
    	if user.admin?
            can :manage, :all
    	else
        	can :read, :all
    	end
    end
  end
end