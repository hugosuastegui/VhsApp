5.times do |project|
  Project.create!(
    title: "Project #{project}",
    account: "SG&A",
    category: 1,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    end_date: 20000101,
    client: "Client #{project}",
    location: "Morelia",
    revenue: 1000000.0,
    volume: 500.0
    )
end

5.times do |concept|
    Concept.create!(
        subject: "Supplier #{concept}",
        category: "Direct expenses",
        subcategory: "Welding rods",
        description: "Purshased 3 5kg 6013 bags for the job",
        amount: 3312.0,
        invoice: "F3300",
        project_id: Project.find(concept+1).id
        )
end
