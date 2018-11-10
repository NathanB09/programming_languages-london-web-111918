require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |prog_style, langs|
    langs.each do |lang_name, lang_type|
      new_hash[lang_name] = lang_type
      if new_hash.include?(lang_name) && new_hash[lang_name].include?(:style)
        new_hash[lang_name][:style] << prog_style
      else
        new_hash[lang_name][:style] = [prog_style]
      end
      binding.pry
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
