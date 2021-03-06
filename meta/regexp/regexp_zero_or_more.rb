Mutest::Meta::Example.add :regexp_greedy_zero_or_more do
  source '/\d*/'

  singleton_mutations
  regexp_mutations

  mutation '/\d/'
  mutation '/\d+/'
  mutation '/\D*/'
end

Mutest::Meta::Example.add :regexp_reluctant_zero_or_more do
  source '/\d*?/'

  singleton_mutations
  regexp_mutations

  mutation '/\d/'
  mutation '/\d+?/'
  mutation '/\D*?/'
end

Mutest::Meta::Example.add :regexp_possessive_zero_or_more do
  source '/\d*+/'

  singleton_mutations
  regexp_mutations

  mutation '/\d/'
  mutation '/\d++/'
  mutation '/\D*+/'
end
