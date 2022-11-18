module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :all_companies, [CompanyType], 'All companies'do
      argument :size, Int, required: false, default_value: 15
    end
    def all_companies(size:)
      Company.all.limit(size).order(id: :asc)
    end

    field :company_by_id, CompanyType, 'Company by id'do
      argument :id, Int, required: true
    end
    def company_by_id(id:)
      Company.find(id)
    end

    field :company_by_name, [CompanyType], 'Company by name'do
      argument :name, String, required: true
      argument :size, Int, required: false, default_value: 5
    end
    def company_by_name(name:, size:)
      Company.where(name: name).limit(size).order(id: :asc)
    end

    field :all_jobs, [JobType], 'All jobs'do
      argument :size, Int, required: false, default_value: 15
    end
    def all_jobs(size:)
      Job.all.limit(size).order(id: :asc)
    end

    field :job_by_id, JobType, 'Job by id'do
      argument :id, Int, required: true
    end
    def job_by_id(id:)
      Job.find(id)
    end

    field :job_by_name, [JobType], 'Job by id'do
      argument :name, String, required: true
      argument :size, Int, required: false, default_value: 5
    end
    def job_by_name(name:, size:)
      Job.where(name: name).limit(size).order(id: :asc)
    end

    field :all_geeks, [GeekType], 'All geeks'do
      argument :size, Int, required: false, default_value: 15
    end
    def all_geeks(size:)
      Geek.all.limit(size).order(id: :asc)
    end

    field :geek_by_name, [GeekType], 'Geek by name'do
      argument :name, String, required: true
      argument :size, Int, required: false, default_value: 5
    end
    def geek_by_name(name:, size:)
      Geek.where(name: name).limit(size).order(id: :asc)
    end

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
  end
end
