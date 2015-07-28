class Gojimo
  def initialize
    @qualification
  end

  def get_qualifications
    qualifications = make_request("#{ENV['GOJIMO_API_URL']}qualifications")

    qualifications.map { |q| Qualification.new({id: q["id"],
                                                name: q["name"],
                                                link: q["link"]})}
  end

  def get_qualification(id)
    response = make_request("#{ENV['GOJIMO_API_URL']}qualifications/#{id}")

    qualification = Qualification.new({ id: response["id"],
                                        name: response["name"],
                                        link: response["link"]
                                     })

    response["subjects"].each do |subject|
      qualification.subjects << Subject.new({ id: subject["id"],
                                              title: subject["name"],
                                              colour: subject["colour"],
                                              link: subject["link"],
                                              icon: subject["icon"]
                                            })
    end

    qualification
  end

  private

  def make_request(url)
    request = Typhoeus::Request.new(url)
    response = request.run

    JSON.parse(response.body)
  end
end
