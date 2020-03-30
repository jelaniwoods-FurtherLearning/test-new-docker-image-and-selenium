require "rails_helper"

describe "/rock" do
  it "has a link to '/rock' in white text", {:js => true, :points => 1} do

    visit "/rock"
    
    expect(page).to have_tag("html") do
      with_tag("body") do
        with_tag("table") do
          with_tag("tr") do
            with_tag("td") do
              with_tag("a", :seen => "Play Rock" )
            end
          end
        end
      end
    end
    # TODO sometimes, the tests will visit the page too fast and the CSS hasn't loaded yet
    sleep 1
    rock_link = page.find("html body table tr:first-child > td:first-child > a")
    
    rgba_color_value = rock_link.native.style("color")
    color_number_values = rgba_color_value.gsub("rgba(", "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(255)
    expect(green_value).to eq(255)
    expect(blue_value).to eq(255)
  end
end

describe "/rock" do
  it "has 'Play Paper' link to be in blue text", {:js => true, :points => 1} do

    visit "/rock"

    expect(page).to have_tag("html") do
      with_tag("body") do
        with_tag("table") do
          with_tag("tr") do
            with_tag("td") do
              with_tag("a", :seen => "Play Paper")
            end
          end
        end
      end
    end
    
    rock_link = page.find("html body table tr:first-child > td:nth-child(2) > a")
    
    rgba_color_value = rock_link.native.style("color")
    color_number_values = rgba_color_value.gsub("rgba(", "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value
    expect(green_value).to be < blue_value
  end
end

describe "/rock" do
  it "has 'Play Scissors' link to be in blue text", {:js => true, :points => 1 } do

    visit "/rock"

    expect(page).to have_tag("html") do
      with_tag("body") do
        with_tag("table") do
          with_tag("tr") do
            with_tag("td") do
              with_tag("a", :seen => "Play Scissors")
            end
          end
        end
      end
    end
    
    rock_link = page.find("html body table tr:first-child > td:nth-child(3) > a")
    
    rgba_color_value = rock_link.native.style("color")
    color_number_values = rgba_color_value.gsub("rgba(", "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value
    expect(green_value).to be < blue_value
  end
end
