5.times do |project|
  Project.create!(
    title: "Project #{project}",
    category: 1,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    end_date: 20000101,
    client: "Client #{project}",
    location: "Morelia",
    revenue: 1000000.0,
    volume: 500.0
    )
end
