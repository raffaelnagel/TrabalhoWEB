json.array!(@member_projects) do |member_project|
  json.extract! member_project, :id, :members_id, :projects_id
  json.url member_project_url(member_project, format: :json)
end
