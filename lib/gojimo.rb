class Gojimo
  def initialize
  end

  def get_qualifications
    qualifications = make_request("#{ENV['GOJIMO_API_URL']}qualifications")

    qualifications.map { |q| Qualification.new({id: q[:id],
                                                name: q[:name],
                                                link: q[:link]} )}
  end

  private

  def make_request(url)
    request = Typhoeus::Request.new(url)
    response = request.run

    JSON.parse(response.body)
  end
end
