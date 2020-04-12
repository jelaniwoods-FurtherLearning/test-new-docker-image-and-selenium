require "rails_helper"

describe "/scissors" do
  it "has 'Play Rock' link in blue text.", {:js => true, :points => 1} do

    visit "/scissors"

    rock_link = nil

    within "html" do
      within "body" do
        rock_link = find("a", :text => /Play Rock/i)
      end
    end
    
    rgba_color_value = rock_link.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value,
      "Expected the amount of Red(#{red_value}) in the color of the link to be less than the amount of blue(#{blue_value}), but wasn't."
    expect(green_value).to be < blue_value,
      "Expected the amount of Green(#{green_value}) in the color of the link to be less than the amount of blue(#{blue_value}), but wasn't."
  end
end

describe "/scissors" do
  it "has 'Play Paper' link in blue text.", {:js => true, :points => 1} do

    visit "/scissors"

    paper_link = nil

    within "html" do
      within "body" do
        paper_link = find("a", :text => /Play Paper/i)
      end
    end
    
    rgba_color_value = paper_link.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value,
      "Expected the amount of Red(#{red_value}) in the color of the link to be less than the amount of blue(#{blue_value}), but wasn't."
    expect(green_value).to be < blue_value,
      "Expected the amount of Green(#{green_value}) in the color of the link to be less than the amount of blue(#{blue_value}), but wasn't."

  end
end

describe "/scissors" do
  it "has 'Play Scissors' link in white text.", {:js => true, :points => 1} do

    visit "/scissors"

    scissors_link = nil

    within "html" do
      within "body" do
        scissors_link = find("a", :text => /Play Scissors/i)
      end
    end
    
    rgba_color_value = scissors_link.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i


    expect(red_value).to be(255),
      "Expected the amount of Red(#{red_value}) in the color of the link to be 255 but wasn't."
    expect(green_value).to be(255),
      "Expected the amount of Green(#{green_value}) in the color of the link to be 255 but wasn't."
    expect(blue_value).to be(255),
      "Expected the amount of Blue(#{blue_value}) in the color of the link to be 255 but wasn't."
  end
end

describe "/scissors" do
  it "has 'Play Rock' link with a white background color. ", {:js => true, :points => 1} do
    
    visit "/scissors"

    rock_link = nil

    within "html" do
      within "body" do
        rock_link = find("a", :text => /Play Rock/i)
      end
    end
    
    rgba_color_value = rock_link.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i
        
    alpha_value = color_number_values.last.to_i
        
    if rgba_color_value.include?("a")
     expect(alpha_value).to be(0),
      "Expected the alpha of the background color to be 0 (transparent), got #{alpha_value} instead."
    else
      expect(red_value).to be(255),
        "Expected the amount of Red(#{red_value}) in the background color of the link to be 255 but wasn't."
      expect(green_value).to be(255),
        "Expected the amount of Green(#{green_value}) in the background color of the link to be 255 but wasn't."
      expect(blue_value).to be(255),
        "Expected the amount of Blue(#{blue_value}) in the background color of the link to be 255 but wasn't." 
    end
  end

end

describe "/scissors" do
  it "has 'Play Paper' link with a white background color. ", {:js => true, :points => 1} do
    visit "/scissors"

    within "html" do
      within "body" do
        paper_link = find("a", :text => /Play Paper/i)
        
        rgba_color_value = paper_link.native.style("background-color")
        color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")
    
        red_value = color_number_values.first.to_i
        green_value = color_number_values.second.to_i
        blue_value = color_number_values.third.to_i
        alpha_value = color_number_values.last.to_i
        
        if rgba_color_value.include?("a")
          expect(alpha_value).to be(0),
           "Expected the alpha of the background color to be 0, got #{alpha_value} instead."
         else
           expect(red_value).to be(255),
             "Expected the amount of Red(#{red_value}) in the background color of the link to be 255 but wasn't."
           expect(green_value).to be(255),
             "Expected the amount of Green(#{green_value}) in the background color of the link to be 255 but wasn't."
           expect(blue_value).to be(255),
             "Expected the amount of Blue(#{blue_value}) in the background color of the link to be 255 but wasn't."
           
         end
      end
    end

  end
end

describe "/scissors" do
  it "has 'Play Scissors' link with a blue background color. ", {:js => true, :points => 1} do
    visit "/scissors"

    within "html" do
      within "body" do
        scissors_link = find("a", :text => /Play Scissors/i)
        
        rgba_color_value = scissors_link.native.style("background-color")
        color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")
    
        red_value = color_number_values.first.to_i
        green_value = color_number_values.second.to_i
        blue_value = color_number_values.third.to_i
        
        expect(red_value).to be < blue_value,
          "Expected the amount of Red(#{red_value}) in the color of the link to be less than the amount of blue(#{blue_value}), but wasn't."
        expect(green_value).to be < blue_value,
          "Expected the amount of Green(#{green_value}) in the color of the link to be less than the amount of blue(#{blue_value}), but wasn't."
      end
    end
  end
end

describe "/scissors" do
  it "has a second level heading with text 'We Played Scissors!' that is green. ", {:js => true, :points => 1} do
    visit "/scissors"

    within "html" do
      within "body" do
        heading = find("h2", :text => /We Played Scissors/i)
        
        rgba_color_value = heading.native.style("color")
        color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")
    
        red_value = color_number_values.first.to_i
        green_value = color_number_values.second.to_i
        blue_value = color_number_values.third.to_i
        
        expect(red_value).to be < green_value,
          "Expected the amount of Red(#{red_value}) in the color of the link to be less than the amount of Green(#{green_value}), but wasn't."
        expect(blue_value).to be < green_value,
          "Expected the amount of Blue(#{blue_value}) in the color of the link to be less than the amount of Green(#{green_value}), but wasn't."

      end
    end
  end
end

describe "/scissors" do
  it "has a second level heading with text 'They Played Paper!' that is red.", {:js => true, :points => 1} do
    visit "/scissors"

    within "html" do
      within "body" do
        heading = find("h2", :text => /They Played Paper/i)
        
        rgba_color_value = heading.native.style("color")
        color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")
    
        red_value = color_number_values.first.to_i
        green_value = color_number_values.second.to_i
        blue_value = color_number_values.third.to_i
        
        expect(green_value).to be < red_value,
          "Expected the amount of Green(#{green_value}) in the color of the link to be less than the amount of Red(#{red_value}), but wasn't."
        expect(blue_value).to be < red_value,
          "Expected the amount of Blue(#{blue_value}) in the color of the link to be less than the amount of Red(#{red_value}), but wasn't."

      end
    end
  end
end

describe "/scissors" do
  it "has a second level heading with text 'We won!' that is green.", {:js => true, :points => 1} do
    visit "/scissors"
    
    within "html" do
      within "body" do
        heading = find("h2", :text => /We won/i)
        
        rgba_color_value = heading.native.style("color")
        color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")
    
        red_value = color_number_values.first.to_i
        green_value = color_number_values.second.to_i
        blue_value = color_number_values.third.to_i
        
        expect(red_value).to be < green_value,
          "Expected the amount of Red(#{red_value}) in the color of the link to be less than the amount of Green(#{green_value}), but wasn't."
        expect(blue_value).to be < green_value,
          "Expected the amount of Blue(#{blue_value}) in the color of the link to be less than the amount of Green(#{green_value}), but wasn't."

      end
    end
  end
  
end

describe "/scissors" do
  it "has a 'div' that contains heading 'We Played Scissors!'. ", :points => 1 do
    visit "/scissors"

    within "body" do
      heading = find("h2", :text => /We Played Scissors/i)
      parent_element = heading.find(:xpath, '..')
      expect(parent_element.tag_name).to eq("div"),
        "Expected the the heading to be immediately inside a 'div' tag, but instead was inside a #{parent_element.tag_name}."
    end

  end
end

describe "/scissors" do
  it "has a 'div' that contains heading 'They Played Paper!'. ", :points => 1 do
    visit "/scissors"

    within "body" do
      heading = find("h2", :text => /They Played Paper/i)
      parent_element = heading.find(:xpath, '..')
      expect(parent_element.tag_name).to eq("div"),
        "Expected the the heading to be immediately inside a 'div' tag, but instead was inside a #{parent_element.tag_name}."
    end

  end 
end

describe "/scissors" do
  it "has a 'div' that contains heading 'We won!'.", :points => 1 do
    visit "/scissors"

    within "body" do
      heading = find("h2", :text => /We won/i)
      parent_element = heading.find(:xpath, '..')
      expect(parent_element.tag_name).to eq("div"),
        "Expected the the heading to be immediately inside a 'div' tag, but instead was inside a #{parent_element.tag_name}."
    end

  end
end

describe "/scissors" do
  it "has a 'div' that contains heading 'We Played Scissors!' with a green border color. ", {:js => true, :points => 1} do
    visit "/scissors"

    within "html" do
      within "body" do
        containing_div = find("div", :text => /We Played Scissors/i)
        
        rgba_color_value = containing_div.native.style("border-color")
        color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")
    
        red_value = color_number_values.first.to_i
        green_value = color_number_values.second.to_i
        blue_value = color_number_values.third.to_i
        
        expect(red_value).to be < green_value,
          "Expected the amount of Red(#{red_value}) in the border color of the 'div' to be less than the amount of Green(#{green_value}), but wasn't."
        expect(blue_value).to be < green_value,
          "Expected the amount of Blue(#{blue_value}) in the border color of the 'div' to be less than the amount of Green(#{green_value}), but wasn't."

      end
    end
  end
end

describe "/scissors" do
  it "has a 'div' that contains heading 'They Played Paper!' with a red border color.", {:js => true, :points => 1} do
    visit "/scissors"

    within "html" do
      within "body" do
        containing_div = find("div", :text => /They Played Paper/i)
        
        rgba_color_value = containing_div.native.style("border-color")
        color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")
    
        red_value = color_number_values.first.to_i
        green_value = color_number_values.second.to_i
        blue_value = color_number_values.third.to_i
        
        expect(green_value).to be < red_value,
          "Expected the amount of Green(#{green_value}) in the border color of the 'div' to be less than the amount of Red(#{red_value}), but wasn't."
        expect(blue_value).to be < red_value,
          "Expected the amount of Blue(#{blue_value}) in the border color of the 'div' to be less than the amount of Red(#{red_value}), but wasn't."

      end
    end
  end
  
end

describe "/scissors" do
  it "has a 'div' that contains heading 'We won!' with a green border color.", {:js => true, :points => 1} do
    visit "/scissors"

    within "html" do
      within "body" do
        containing_div = find("div", :text => /We won/i)
        
        rgba_color_value = containing_div.native.style("border-color")
        color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")
    
        red_value = color_number_values.first.to_i
        green_value = color_number_values.second.to_i
        blue_value = color_number_values.third.to_i
        
        expect(red_value).to be < green_value,
          "Expected the amount of Red(#{red_value}) in the color of the link to be less than the amount of Green(#{green_value}), but wasn't."
        expect(blue_value).to be < green_value,
          "Expected the amount of Blue(#{blue_value}) in the color of the link to be less than the amount of Green(#{green_value}), but wasn't."
      end
    end
  end
  
end

describe "/scissors" do
  it "has a 'div' that contains heading 'We Played Scissors!' that is next to a 'div' that contains 'The Played Paper!'.", {:js => true, :points => 1} do
    visit "/scissors"

    within "html" do
      within "body" do
        we_played_rock_div = find("div", :text => /We Played Scissors/i)
        they_played_paper_div = find("div", :text => /They Played Paper/i)
        
        top_of_rock_div = we_played_rock_div.evaluate_script("this.getBoundingClientRect().top;")
        bottom_of_rock_div = we_played_rock_div.evaluate_script("this.getBoundingClientRect().bottom;")
        
        top_of_paper_div = they_played_paper_div.evaluate_script("this.getBoundingClientRect().top;")
        
        expect(top_of_rock_div..bottom_of_rock_div).to cover(top_of_paper_div),
          "Expected the top of 'They Played Paper' div to be between #{top_of_rock_div} and #{bottom_of_rock_div}, but was #{top_of_paper_div} instead."
       
      end
    end
  end
end

