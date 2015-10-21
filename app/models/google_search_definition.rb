class GoogleSearchDefinition
  include Sidekiq::Worker

  def perform(definition_id)
    definition = Definition.find(definition_id)
     definition.google_results = open("http://www.google.com?q=#{definition.title}").read
     definition.save

     sleep 10
  end
end
