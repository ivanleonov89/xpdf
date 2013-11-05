require 'spec_helper'
require 'pry'

describe Xpdf do
  before :each do
    @pdf_path = fixture_file_path('marketing.pdf')
  end

  it "should parse pdf" do
    pdf_text = Xpdf::to_formatted_text(@pdf_path)
    pdf_text.should include('Eine Arbeitsgemeinschaft der Verlage')
    pdf_text.should include('Beltz Verlag Weinheim')
  end
end
