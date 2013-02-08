class Admix::BoardMessagesController < Admix::InheritedController

  def approve
    resource.status = :approved
    resource.save!
    flash[:notice] = t('boardmessages.flashes.approved')
    redirect_to collection_url
  end

  def disapprove
    resource.status = :disapproved
    resource.save!
    flash[:notice] = t('boardmessages.flashes.disapproved')
    redirect_to collection_url
  end

end