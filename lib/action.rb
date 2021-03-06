class Action
  attr_reader :owner, :dicepool, :attribute, :difficulty

  def initialize(owner, dicepool)
    @owner = owner
    @dicepool = dicepool

    action_attributes
  end

  def action_attributes
    raise "You MUST initialize @attribute and @difficulty"
  end

  def activate(target)
    if dicepool.skill_check(owner.strength, target.toughness)
      success(target)
    else
      failure(target)
    end
  end

  def success
  end

  def failure
  end

  
end