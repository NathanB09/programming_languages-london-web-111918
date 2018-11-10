require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  style_array = []
  languages.each do |prog_style, langs|
    langs.each do |lang_name, lang_type|
      new_hash[lang_name] = lang_type
      testing = languages[:oo].include?(:javascript) && languages[:functional].include?(:javascript)
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
