def split_price(price_text)
  s = /^(.*?)(万?円|)$/.match(price_text.to_s)
  [s[1],s[2]]
end