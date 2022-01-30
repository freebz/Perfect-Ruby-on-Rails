# 리스트 9-15 ajax/result.json.jbuilder

json.array!(@books) do |book|
  json.extract! book, :isbn, :title
end
