# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://localhost:3000"

SitemapGenerator::Sitemap.create do

  add news_index_path, :priority => 0.7, :changefreq => 'daily'
  News.find_each do |item|
    add news_path(item), :lastmod => item.updated_at
  end
  
  add events_path, :priority => 0.7, :changefreq => 'daily'
  Event.find_each do |item|
    add event_path(item), :lastmod => item.updated_at
  end
end
