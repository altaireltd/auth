class User < ActiveRecord::Base

  belongs_to :role

  def self.from_omniauth (data)
    user = where(uid: data.uid).first_or_initialize
    user.name = data.extra.cn
    user.email = data.extra.mail
    user.save!
    user
  end

  after_initialize do
    self.role ||= Role.default
  end

  def can? (what)
    role ? role.can?(what) : true
  end

end
