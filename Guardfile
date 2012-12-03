guard :shell, all_on_start: true do
  watch(%r{^(src|spec)/.+}) do |m|
    `cabal build && cabal test`
  end
end
