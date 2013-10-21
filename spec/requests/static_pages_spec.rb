require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "debe tener el contenido 'Aplicacion de Ejemplo'" do
      visit '/static_pages/home'
      expect(page).to have_content('Aplicacion de Ejemplo')
    end
    it "debe tener el titulo 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Aplicacion de Ejemplo Ruby on Rails | Home")
    end
  end
  
  describe "Help page" do
    it "debe tener el contenido 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('help')
    end
    it "debe tener el titulo 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Aplicacion de Ejemplo Ruby on Rails | Help")
    end
  end
  
  describe "About page" do
    it "debe contener 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us') 
    end
    it "debe tener el titulo 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Aplicacion de Ejemplo Ruby on Rails | About Us")
    end
  end
end

describe "Contact" do
    it "debe contener 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact') 
    end
    it "debe tener el titulo 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Aplicacion de Ejemplo Ruby on Rails | Contact")
    end
  end
