require "rails_helper"

describe "The home page" do
  it "has 'Play Rock' link in blue text.", {:js => true, :points => 1} do

    visit "/"

    within "html" do
      within "body" do
        rock_link = find("a", :text => /Play Rock/i)
        
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
  end
end

describe "The home page" do
  it "has 'Play Paper' link in blue text.", {:js => true, :points => 1} do

    visit "/"

    within "html" do
      within "body" do
        paper_link = find("a", :text => /Play Paper/i)
        
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
    
  end
end

describe "The home page" do
  it "has 'Play Scissors' link in blue text.", {:js => true, :points => 1} do

    visit "/"

    within "html" do
      within "body" do
        scissors_link = find("a", :text => /Play Scissors/i)
        
        rgba_color_value = scissors_link.native.style("color")
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

describe "The home page" do
  it "has 'Play Rock' link with a white background color. ", {:js => true, :points => 1} do
    
    visit "/"

    within "html" do
      within "body" do
        rock_link = find("a", :text => /Play Rock/i)
        rgba_color_value = rock_link.native.style("background-color")
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

describe "The home page" do
  it "has 'Play Paper' link with a white background color. ", {:js => true, :points => 1} do
    visit "/"

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

describe "The home page" do
  it "has 'Play Scissors' link with a white background color. ", {:js => true, :points => 1} do
    visit "/"

    within "html" do
      within "body" do
        scissors_link = find("a", :text => /Play Scissors/i)
        
        rgba_color_value = scissors_link.native.style("background-color")
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

describe "The home page" do
  it "has a 'p' tag that contains 'Rock-paper-scissors...' that is next to a 'div' that contains an Image and 'A chart showing how the three game elements interact'.", {:js => true, :points => 2} do
    visit "/"

    within "html" do
      within "body" do
        rock_paper_scissors_p = find("p", :text => /Rock-paper-scissors/i)
        rps_chart_div = find("div", :text => /A chart showing how the three game elements interact/i)
        
        rps_p_top = rock_paper_scissors_p.evaluate_script("this.getBoundingClientRect().top;")
        
        top_of_chart_div = rps_chart_div.evaluate_script("this.getBoundingClientRect().top;")
        bottom_of_chart_div = rps_chart_div.evaluate_script("this.getBoundingClientRect().bottom;")
        
        expect(top_of_chart_div..bottom_of_chart_div).to cover(rps_p_top),
          "Expected the top of 'Rock-paper-scissors...' paragraph to be between #{top_of_chart_div} and #{bottom_of_chart_div}, but was #{rps_p_top} instead."
       
      end
    end
  end
end

describe "The home page" do
  it "has a 'p' tag that contains 'A player who decides to play rock...' that is next to a 'div' that contains an Image and 'A chart showing how the three game elements interact'.", {:js => true, :points => 2} do
    visit "/"

    within "html" do
      within "body" do
        paragraph = find("p", :text => /A player who decides to play rock/i)
        rps_chart_div = find("div", :text => /A chart showing how the three game elements interact/i)
        
        top_of_paragraph = paragraph.evaluate_script("this.getBoundingClientRect().top;")
        
        top_of_chart_div = rps_chart_div.evaluate_script("this.getBoundingClientRect().top;")
        bottom_of_chart_div = rps_chart_div.evaluate_script("this.getBoundingClientRect().bottom;")
        
        expect(top_of_chart_div..bottom_of_chart_div).to cover(top_of_paragraph),
          "Expected the top of 'A player who decides to play rock...' paragraph to be between #{top_of_chart_div} and #{bottom_of_chart_div}, but was #{top_of_paragraph} instead."
       
      end
    end
  end
end

describe "The home page" do
  it "has a 'table' tag below 'A player who decides...' paragraph that is next to a 'div' that contains an Image and 'A chart showing how the three game elements interact'.", {:js => true, :points => 2} do
    visit "/"

    within "html" do
      within "body" do
        rps_chart_div = find("div", :text => /A chart showing how the three game elements interact/i)
        
        p table = find("p", :text => /A player who decides/i).sibling("table")
        top_of_table = table.evaluate_script("this.getBoundingClientRect().top;")
        
        top_of_chart_div = rps_chart_div.evaluate_script("this.getBoundingClientRect().top;")
        bottom_of_chart_div = rps_chart_div.evaluate_script("this.getBoundingClientRect().bottom;")
        
        expect(top_of_chart_div..bottom_of_chart_div).to cover(top_of_table),
          "Expected the top of table to be between #{top_of_chart_div} and #{bottom_of_chart_div}, but was #{top_of_table} instead."
       
      end
    end
  end
end

describe "The home page" do
  it "has 'Play Paper' link in the center of the page.", {:js => true, :points => 2} do
    visit "/"

    within "html" do
      within "body" do
        window = page.current_window
        window_right = window.size.first
        window_center = window_right / 2 

        paper_link = find("a", :text => /Play Paper/i)
        
        paper_left = paper_link.evaluate_script("this.getBoundingClientRect().left;")
        paper_right = paper_link.evaluate_script("this.getBoundingClientRect().right;")
        
        expect(paper_left..paper_right).to cover(window_center),
          "Expected the link to cover center of the page(#{window_center}) but started and ended #{paper_left} and #{paper_right}, instead."
       
      end
    end
  end
end

describe "The home page" do
  it "has 'Play Rock' link on the left side of the page.", {:js => true, :points => 2} do
    visit "/"

    within "html" do
      within "body" do
        window = page.current_window
        window_left = 0
        window_center = window.size.first / 2 

        rock_link = find("a", :text => /Play Rock/i)
        
        rock_right = rock_link.evaluate_script("this.getBoundingClientRect().right;")
        
        expect(window_left..window_center).to cover(rock_right),
          "Expected the right side of link to be between #{window_left} and #{window_center}, but was #{rock_right} instead."
       
      end
    end
  end
end

describe "The home page" do
  it "has 'Play Scissors' link on the right side of the page.", {:js => true, :points => 2} do
    visit "/"

    within "html" do
      within "body" do
        window = page.current_window
        window_right = window.size.first
        window_center = window_right / 2 

        scissors_link = find("a", :text => /Play Scissors/i)
        
        scissors_left = scissors_link.evaluate_script("this.getBoundingClientRect().left;")
        
        expect(window_center..window_right).to cover(scissors_left),
          "Expected the left side of link to be between #{window_center} and #{window_right}, but was #{scissors_left} instead."
       
      end
    end
  end
end

describe "The home page" do
  it "has RPS Chart div on the right side of the page.", {:js => true, :points => 2} do
    visit "/"

    within "html" do
      within "body" do
        window = page.current_window
        window_right = window.size.first
        window_center = window_right / 2 

        rps_chart_div = find("div", :text => /A chart showing how the three game elements interact/i)
        
        rps_chart_left = rps_chart_div.evaluate_script("this.getBoundingClientRect().left;")
        
        expect(window_center..window_right).to cover(rps_chart_left),
          "Expected the left of div with image to be between #{window_center} and #{window_right}, but was #{rps_chart_left} instead."
       
      end
    end
  end
end

describe "The home page" do
  it "has div with kitsune-ken image on the right side of the page.", {:js => true, :points => 2} do
    visit "/"

    within "html" do
      within "body" do
        window = page.current_window
        window_right = window.size.first
        window_center = window_right / 2 

        kitsune_div = find("div", :text => /Kitsune-ken/i)
        
        kitsune_left = kitsune_div.evaluate_script("this.getBoundingClientRect().left;")
        
        expect(window_center..window_right).to cover(kitsune_left),
          "Expected the left of div with image to be between #{window_center} and #{window_right}, but was #{kitsune_left} instead."
       
      end
    end
  end
end

describe "The home page" do
  it "has div with Mushi-ken image on the right side of the page.", {:js => true, :points => 2} do
    visit "/"

    within "html" do
      within "body" do
        window = page.current_window
        window_right = window.size.first
        window_center = window_right / 2 

        mushi_div = find("div", :text => /Mushi-ken/i)
        
        mushi_left = mushi_div.evaluate_script("this.getBoundingClientRect().left;")

        expect(window_center..window_right).to cover(mushi_left),
          "Expected the left of div with image to be between #{window_center} and #{window_right}, but was #{mushi_left} instead."
      end
    end
  end
end
