desc 'Generating products'
task :generate_products=> :environment do
  require 'nokogiri'
  require 'open-uri'
  require 'cgi'


  url_ps3 =  "http://www.game.co.uk/en/games/playstation-3/?langId=44&storeId=10151&catalogId=10201&categoryId=10225&pageView=&sortBy=MOST_POPULAR_DESC&inStockOnly=true&listerOnly=true&contentOnly=&storeOnly=&provenance=Preowned&resultCatEntryType=&catgrpSchemaType=&RASchemaType=&searchTerm=&searchType=&searchTermOperator=&searchTermScope=&filterTerm=&filterType=&filterTermOperator=&catGroupId=&categoryType=&sType=&minPrice=&maxPrice=&attributeName1=Shop+By&attributeValue1=64&pageSize=300"

  url_psvita = "http://www.game.co.uk/en/games/ps-vita/?langId=44&storeId=10151&catalogId=10201&categoryId=178167&pageView=&sortBy=MOST_POPULAR_DESC&inStockOnly=true&listerOnly=true&contentOnly=&storeOnly=&provenance=New&resultCatEntryType=&catgrpSchemaType=&RASchemaType=&searchTerm=&searchType=&searchTermOperator=&searchTermScope=&filterTerm=&filterType=&filterTermOperator=&catGroupId=&categoryType=&sType=&minPrice=&maxPrice=&attributeName1=Shop+By&attributeValue1=63&pageSize=All"

  docs = []
  docs.push({:data => Nokogiri::HTML(open(url_ps3)), :console_id => 1})
  docs.push({:data => Nokogiri::HTML(open(url_psvita)), :console_id => 5})
  fetch_data_from_game(docs)
  end

  def fetch_data_from_game(docs)
    docs.each do |doc|
      doc[:data].css('.product').each do |item|
        unless item.at_css('.price').nil?
          cost = item.at_css('.price').text[/[0-9\.]+/]
          name = item.at_css('.uri, .title').text.delete("\n\t")
          image_url= item.at_css('.frame img').first[1]
          price = cost.to_d * 6
          Product.create(:console_id => doc[:console_id], :price => price, :name=> name, :image_url => image_url, :cost => cost, )
        end
      end
    end
  end
