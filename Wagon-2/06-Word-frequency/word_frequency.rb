# I had a problem with my computer's name accents (Céline) [not recognized by Ruby, so he did not recognize the path] so I put the text here.
WHOLETEXT = "Why are we here, what is life all about?
Is God really real, or is there some doubt?
Well tonight we're going to sort it all out,
For tonight it's the Meaning of Life.

What's the point of all these hoax?
Is it the chicken and egg time, are we all just yolks?
Or perhaps, we're just one of God's little jokes,
Well ca c'est the Meaning of Life.

Is life just a game where we make up the rules
While we're searching for something to say
Or are we just simple spiralling coils
Of self-replicating DNA?

What is life?  What is our fate?
Is there Heaven and Hell?  Do we reincarnate?
Is mankind evolving or is it too late?
Well tonight here's the Meaning of Life.

For millions this life is a sad vale of tears
Sitting round with really nothing to say
While scientists say we're just simply spiralling coils
Of self-replicating DNA.

So just why, why are we here?
And just what, what, what, what do we fear?
Well ce soir, for a change, it will all be made clear,
For this is the Meaning of Life - c'est le sens de la vie -
This is the Meaning of Life ."

STOPWORDS = ("a,able,about,across,after,all,almost,also,am,among,an,and,any,are,as,at,be,because,been,but,by,can,cannot,could,dear,did,do,does,either,else,ever,every,for,from,get,got,had,has,have,he,her,hers,him,his,how,however,i,if,in,into,is,it,its,just,least,let,like,likely,may,me,might,most,must,my,neither,no,nor,not,of,off,often,on,only,or,other,our,own,rather,said,say,says,she,should,since,so,some,than,that,the,their,them,then,there,these,they,this,tis,to,too,twas,us,wants,was,we,were,what,when,where,which,while,who,whom,why,will,with,would,yet,you,your").split(/\W+/)

def most_common_words(filename, n)

	word_list = filename.split.each { |x| x.capitalize!} #my file words'list.

	counts = Hash.new(0)  #counting
	for word in word_list
		counts[word] += 1
	end

	clean_list = counts.delete_if{ |x| STOPWORDS.include?(x.downcase)} #delete stopwords from my list

	list = clean_list.sort_by{ |x,y| y} #sort from smaller to higher

	return list.last(n).reverse #top n words most used in my file.

end

print most_common_words(WHOLETEXT, 5)