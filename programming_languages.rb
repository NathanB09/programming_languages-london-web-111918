require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |lang_name, lang_type|
      new_hash[lang_name] = lang_type
      # if langs.include?
    end
  end
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
