class Gojimo
  def initialize
  end

  def get_qualifications
    qualifications = []

    request = Typhoeus::Request.new("#{ENV['GOJIMO_API_URL']}qualifications")
    request.on_complete do |response|

      JSON.parse(response.body).each do |qualification|
        qualifications << Qualification.new
      end
    end

    request.run

    return qualifications
  end
end
