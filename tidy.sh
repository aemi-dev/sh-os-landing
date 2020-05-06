for f in *
do
  d=$(file -b --mime-type "$f" | tr / -)
  mkdir -p "$d"
  mv "$f" "$d/"
done