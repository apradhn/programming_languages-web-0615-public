require 'pry'

def reformat_languages(languages)
  # your code here
  languages.each.with_object({}) do |(style_key, style), reformat|
    style.each do |lang_key, lang|

      if reformat[lang_key].nil?
        reformat[lang_key] = {}
      end
      reformat[lang_key][:type] = lang[:type]

      if reformat[lang_key][:style].nil?
        reformat[lang_key][:style] = [style_key]
      else 
        reformat[lang_key][:style] << style_key
      end

    end
  end
  
end
