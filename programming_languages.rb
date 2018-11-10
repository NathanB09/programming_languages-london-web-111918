require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  style_array = []
  languages.each do |prog_style, langs|
    langs.each do |lang_name, lang_type|
      new_hash[lang_name] = lang_type
      if style_array == 1 && langs.include?(lang_name)
        style_array << prog_style
        new_hash[lang_name][:style] = style_array
        style_array = []
      else
        style_array << prog_style
        new_hash[lang_name][:style] = style_array
        style_array = []
      end
    end
  end
  new_hash
  binding.pry
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
