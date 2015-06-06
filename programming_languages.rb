require 'pry'

def reformat_languages(languages)
  # your code here
  reformat = {}
  languages.each do |style_key, style|
    style.each do |lang_key, lang|

      if reformat[lang_key].nil?
        reformat[lang_key] = {}
      end
      reformat[lang_key][:type] = lang[:type]

      if reformat[lang_key][:style].nil?
        reformat[lang_key][:style] = [style_key]
      elsif style_key == :oo
        reformat[lang_key][:style] << style_key
      elsif style_key == :functional
        reformat[lang_key][:style] << style_key 
      end
      
    end
  end

  reformat
end
