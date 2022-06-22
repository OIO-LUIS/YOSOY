require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference("Project.count") do
      post projects_url, params: { project: { age_group: @project.age_group, category: @project.category, comments: @project.comments, community_benefit: @project.community_benefit, community_serviceScore: @project.community_serviceScore, complexity_level: @project.complexity_level, costEffective_score: @project.costEffective_score, description: @project.description, intitial_cost: @project.intitial_cost, is_artist: @project.is_artist, location_address: @project.location_address, location_city: @project.location_city, location_lat: @project.location_lat, location_lng: @project.location_lng, location_radius: @project.location_radius, member_complexityLevel: @project.member_complexityLevel, name: @project.name, non_profit: @project.non_profit, number_members: @project.number_members, overall_score: @project.overall_score, social_contribution: @project.social_contribution, tags: @project.tags, target_group: @project.target_group, total_cost: @project.total_cost, type: @project.type } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { age_group: @project.age_group, category: @project.category, comments: @project.comments, community_benefit: @project.community_benefit, community_serviceScore: @project.community_serviceScore, complexity_level: @project.complexity_level, costEffective_score: @project.costEffective_score, description: @project.description, intitial_cost: @project.intitial_cost, is_artist: @project.is_artist, location_address: @project.location_address, location_city: @project.location_city, location_lat: @project.location_lat, location_lng: @project.location_lng, location_radius: @project.location_radius, member_complexityLevel: @project.member_complexityLevel, name: @project.name, non_profit: @project.non_profit, number_members: @project.number_members, overall_score: @project.overall_score, social_contribution: @project.social_contribution, tags: @project.tags, target_group: @project.target_group, total_cost: @project.total_cost, type: @project.type } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference("Project.count", -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
