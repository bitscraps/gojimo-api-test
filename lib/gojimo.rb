class Gojimo
  def initialize
  end

  def get_qualifications
    qualifications = make_request("#{ENV['GOJIMO_API_URL']}qualifications")

    qualifications.map { |q| Qualification.new({id: q["id"],
                                                name: q["name"],
                                                link: q["link"]} )}
  end

  def get_subjects_for(qualification)
    qualification = make_request("#{ENV['GOJIMO_API_URL']}qualifications/#{qualification}")

    subjects = qualification["subjects"]
    subjects.map { |s| Subject.new({id: s["id"],
                                    title: s["title"],
                                    colour: s["colour"],
                                    link: s["link"]}) }
  end

  private

  def make_request(url)
    request = Typhoeus::Request.new(url)
    response = request.run

    JSON.parse(response.body)
  end
end
