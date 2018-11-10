require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  style_array = []
  included_lang = []
  languages.each do |prog_style, langs|
    langs.each do |lang_name, lang_type|
      new_hash[lang_name] = lang_type
      included_lang << lang_name
      if included_lang.include?(lang_name) && langs.include?(lang_name)
        new_hash[lang_name][:style] << prog_style
      else
        style_array = [prog_style]
        new_hash[lang_name][:style] = style_array
      end
    end
  end
  new_hash

end

test_hash = {
  :oo => {
    :ruby => {:type => "interpreted"},
    :javascript => {:type => "interpreted"},
    :python => {:type => "interpreted"},
    :java => {:type => "compiled"}
  },
  :functional => {
    :clojure => {:type => "compiled"},
    :erlang => {:type => "compiled"},
    :scala => {:type => "compiled"},
    :javascript => {:type => "interpreted"}
  }
}

reformat_languages(test_hash)
