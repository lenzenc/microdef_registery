  User.seed do |s|
    s.id = 1
    s.first_name = 'Bob'
    s.last_name = "Smith"
    s.email = 'admin@example.com'
    s.password = 'microdef'
    s.password_confirmation = 'microdef'
  end