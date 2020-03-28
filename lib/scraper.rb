require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
      url = ("https://learn-co-curriculum.github.io/student-scraper-test-page")
      website = Nokogiri::HTML(open(url))

        website.css("div.roster-cards-container").each do |student|
        student_hash = {
          name: student.css("div.student-card").text,
          location: student.css("div.student-location").text
          #profile_url:
        }
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end
