module Docs
  class Socketio < UrlScraper
    self.name = 'Socket.IO'
    self.slug = 'socketio'
    self.type = 'socketio'
    self.links = {
      home: 'http://socket.io/',
      code: 'https://github.com/socketio/socket.io'
    }

    html_filters.push 'socketio/clean_html', 'socketio/entries'

    options[:trailing_slash] = false
    options[:skip] = %w(/faq /glossary)

    options[:attribution] = <<-HTML
      &copy; 2014&ndash;2020 Automattic<br>
      Licensed under the MIT License.
    HTML

    version '3' do
      self.release = '3.0.5'
      self.base_url = "https://socket.io/docs/v#{version}"
    end

    version '2' do
      self.release = '2.4.0'
      self.base_url = "https://socket.io/docs/v#{version}"
    end

    def get_latest_version(opts)
      get_npm_version('socket.io', opts)
    end

  end
end
