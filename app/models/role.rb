class Role < ActiveRecord::Base

  PERMISSIONS = {
    "login"     => "Log in",
    "controls"  => "Manage QA controls",
    "deploy"    => "Deploy emails which have passed QA",
    "bypass_qa" => "Deploy emails which haven't passed QA",
    "delete"    => "Delete emails",
    "admin"     => "Administer roles and users",
    "audit"     => "Review the audit log",
    "archive"   => "Archive deployed emails"
  }

  serialize :permissions, JSON

  has_many :users, dependent: :nullify

  after_initialize do
    self.permissions ||= []
  end

  def self.default
    where(default: true).first
  end

  def can? (what)
    permissions.member?(what.to_s)
  end

end
