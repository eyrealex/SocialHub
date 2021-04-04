xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "My Company Blog"
    xml.description "This is a blog by My Company"
    xml.link root_url

    @articles.each do |article|
      xml.item do
        xml.title article.title
        xml.description article.body
        xml.pubDate article.published_at.to_s(:rfc822)
        xml.link article_url(article)
        xml.guid article_url(article)
      end
    end
  end
end
