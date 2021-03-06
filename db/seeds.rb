3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end

puts "3 Topics created"

10.times do |blog|
	Blog.create!(
title:"My Blog Post #{blog}" ,
body:"Contrary to popular belief, Lorem Ipsum is not simply random text. 
It has roots in a piece of classical Latin literature from 45 BC, making it 
over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney 
College in Virginia, looked up one of the more obscure Latin words, consectetur,
from a Lorem Ipsum passage, and going through the cites of the word in classical
literature, discovered the undoubtable source. Lorem Ipsum comes from sections 
1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 
45 BC.This book is a treatise on the theory of ethics, very popular during the
 Renaissance. The first line of Lorem Ipsum,  
 comes from a line in section 1.10.32.",
 topic_id: Topic.last.id
)

end
puts "10 blog posts created"

5.times do |skill|

	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
		)
end
puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
	title: "Portfolio title #{portfolio_item}" ,
	subtitle: "Ruby on Rails" ,
	body: "The standard chunk of Lorem Ipsum used since the 1500s
	 is reproduced below for those interested. Sections 1.10.32
	 and 1.10.33 from  by Cicero are alsoreproduced in their exact original form,
	 accompanied by English versions from the 1914 translation by H. Rackham." ,
	main_image: "https://via.placeholder.com/600x400" ,

		)

end

1.times do |portfolio_item|
	Portfolio.create!(
	title: "Portfolio title #{portfolio_item}" ,
	subtitle: "Angular" ,
	body: "The standard chunk of Lorem Ipsum used since the 1500s
	 is reproduced below for those interested. Sections 1.10.32
	 and 1.10.33 from  by Cicero are alsoreproduced in their exact original form,
	 accompanied by English versions from the 1914 translation by H. Rackham." ,
	main_image: "https://via.placeholder.com/600x400" ,

		)

end

puts "9 portfolio items created"

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}"
		)
	end
 	
	puts "3 technologies created"