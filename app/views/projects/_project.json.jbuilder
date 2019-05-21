json.extract! project, :id, :name, :description, :due_date, :cost, :created_at, :updated_at
json.url project_url(project, format: :json)
