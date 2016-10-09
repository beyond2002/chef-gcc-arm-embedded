actions :create
default_action :create

attribute :from_source, :kind_of => [TrueClass, FalseClass], :default => false
attribute :user, :kind_of => String
attribute :group, :kind_of => String
attribute :dir, :kind_of => String
attribute :user_install, :kind_of => [TrueClass, FalseClass], :default => false
attribute :platform, :kind_of => Array, :name_attribute => false

