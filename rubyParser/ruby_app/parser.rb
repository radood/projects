
file = ""
ARGV.each do|a|
  file = File.read(a)
end

singleArrayWith1Element = file.split("\n")
singlearrayWith2Elements = singleArrayWith1Element.map{|i|i.split(' ')}
finalHash = {}
singlearrayWith2Elements.each do |i,j|
	j = [j]
	if(finalHash[i])
		finalHash[i] = finalHash[i] + j
	else
		finalHash[i] = j
	end
end

numberOfViews = {}
finalHash.each do |i,j|
	numberOfViews[i] = j.count
end

numberOfViews = numberOfViews.sort_by{|a,b| b}.reverse
numberOfViews.each do |i,j|
	puts "For the #{i} page there are #{j} views."
end

numberOfUniqueViews = {}
finalHash.each do |i,j|
	numberOfUniqueViews[i] = j.uniq.count
end

numberOfUniqueViews = numberOfUniqueViews.sort_by{|a,b| b}.reverse
numberOfUniqueViews.each do |i,j|
	puts "For the #{i} page there are #{j} unique views."
end