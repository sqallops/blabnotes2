require 'test_helper'

class ExperimentTest < ActiveSupport::TestCase
	fixtures :products
  test "experiment attributes must not by empty" do
	experiment = Experiment.new
	assert experiment.invalid?
	assert experiment.errors[:title].any?
	assert experiment.errors[:procedure].any?
	assert experiment.errors[:image_url].any?
  end
  
  def new_experiment(image_url)
	Experiment.new(title: "Cu Amidation", procedure: "We threw stuff in an prayed", image_url: image_url)
  end
  test "image url" do
	ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg 		http://a.b.c/x/y/z/fred.gif }
	bad= %w{ fred.doc fred.gif/more fred.gif.more }
	ok.each do |name|
		assert new_experiment(name).valid?, "#{name} should be valid"
	end
	bad.each do |name|
		assert new_experiment(name).invalid?, "#{name} shouldn't be valid"
	end
  end
  
  test "experiment is not valid without a unique title" do
		experiment =Experiment.new(title:	experiments(:ruby).title, procedure: "yyy", image_url: "fred.gif")
		assert experiment.invalid?
		assert_equal ["has already been taken"], experiment.errors[:title]
  end
  
 
end
