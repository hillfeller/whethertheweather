module ApplicationHelper

  def set_weather_for(location)
    client = YahooWeather::Client.new
    response = client.fetch_by_location(location)
    @place = response.doc["title"].html_safe
    @weather = response.doc["item"]["description"].html_safe
    @atmosphere = response.doc["atmosphere"]
    @humidity = @atmosphere["humidity"] if @atmosphere
  end

  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end
end
