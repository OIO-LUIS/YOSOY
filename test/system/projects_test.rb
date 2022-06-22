require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "should create project" do
    visit projects_url
    click_on "New project"

    fill_in "Age group", with: @project.age_group
    fill_in "Category", with: @project.category
    fill_in "Comments", with: @project.comments
    check "Community benefit" if @project.community_benefit
    fill_in "Community servicescore", with: @project.community_serviceScore
    fill_in "Complexity level", with: @project.complexity_level
    fill_in "Costeffective score", with: @project.costEffective_score
    fill_in "Description", with: @project.description
    fill_in "Intitial cost", with: @project.intitial_cost
    check "Is artist" if @project.is_artist
    fill_in "Location address", with: @project.location_address
    fill_in "Location city", with: @project.location_city
    fill_in "Location lat", with: @project.location_lat
    fill_in "Location lng", with: @project.location_lng
    fill_in "Location radius", with: @project.location_radius
    fill_in "Member complexitylevel", with: @project.member_complexityLevel
    fill_in "Name", with: @project.name
    check "Non profit" if @project.non_profit
    fill_in "Number members", with: @project.number_members
    fill_in "Overall score", with: @project.overall_score
    fill_in "Social contribution", with: @project.social_contribution
    fill_in "Tags", with: @project.tags
    fill_in "Target group", with: @project.target_group
    fill_in "Total cost", with: @project.total_cost
    fill_in "Type", with: @project.type
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "should update Project" do
    visit project_url(@project)
    click_on "Edit this project", match: :first

    fill_in "Age group", with: @project.age_group
    fill_in "Category", with: @project.category
    fill_in "Comments", with: @project.comments
    check "Community benefit" if @project.community_benefit
    fill_in "Community servicescore", with: @project.community_serviceScore
    fill_in "Complexity level", with: @project.complexity_level
    fill_in "Costeffective score", with: @project.costEffective_score
    fill_in "Description", with: @project.description
    fill_in "Intitial cost", with: @project.intitial_cost
    check "Is artist" if @project.is_artist
    fill_in "Location address", with: @project.location_address
    fill_in "Location city", with: @project.location_city
    fill_in "Location lat", with: @project.location_lat
    fill_in "Location lng", with: @project.location_lng
    fill_in "Location radius", with: @project.location_radius
    fill_in "Member complexitylevel", with: @project.member_complexityLevel
    fill_in "Name", with: @project.name
    check "Non profit" if @project.non_profit
    fill_in "Number members", with: @project.number_members
    fill_in "Overall score", with: @project.overall_score
    fill_in "Social contribution", with: @project.social_contribution
    fill_in "Tags", with: @project.tags
    fill_in "Target group", with: @project.target_group
    fill_in "Total cost", with: @project.total_cost
    fill_in "Type", with: @project.type
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "should destroy Project" do
    visit project_url(@project)
    click_on "Destroy this project", match: :first

    assert_text "Project was successfully destroyed"
  end
end
