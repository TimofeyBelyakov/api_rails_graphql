module Types
  class MutationType < Types::BaseObject
    field :create_company, CompanyType, "Create new company" do
      argument :name, String
      argument :location, String
    end
    def create_company(name:, location:)
      Company.create(name: name, location: location)
    end

    field :create_job, JobType, "Create new job" do
      argument :name, String
      argument :place, String
      argument :company, Int
    end
    def create_job(name:, place:, company:)
      Job.create(name: name, place: place, company_id: company)
    end

    field :create_geek, GeekType, "Create new geek" do
      argument :name, String
      argument :stack, String
      argument :resume, Boolean
    end
    def create_geek(name:, stack:, resume:)
      Geek.create(name: name, stack: stack, resume: resume)
    end

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"

    def test_field
      "Hello World"
    end
  end
end
