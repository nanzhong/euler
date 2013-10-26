$paths = {}

def num_paths(r, c)
  return 1 if r == 1 || c == 1

  if $paths[[r, c]]
    return $paths[[r, c]]
  end

  path_count = num_paths(r-1, c) + num_paths(r, c-1)
  $paths[[r, c]] = path_count
  $paths[[c, r]] = path_count

  return path_count
end

puts num_paths(21, 21)
