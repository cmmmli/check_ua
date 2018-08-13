require 'wombat'

# Wombat.configure do |config|
#   config.set_user_agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36"
# end

data = Wombat.crawl do
  base_url "http://luftool.com"
  path "/useragent"

  useragent xpath: '//*[@id="main"]/div[1]/div/p[2]/text()'
end

p data