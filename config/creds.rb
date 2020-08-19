class Creds

  ex_creators = {'excreator2.qa@dev' => 'qa2013'}
  ex_assignees = {'exassigneenew.qa@dev' => 'qa2013'}
  @@passwords = ex_creators.merge(ex_assignees)

  def self.get_password(login)
    password = @@passwords[login]
  end

end


