for i in svg/*.svg
do
    echo "Processing "$i
    export target=png/$(basename $i .svg).png
    if grep -q "background:#000" "$i"; then
        rsvg-convert -h 1000 $i -o $target -b black
    else
        rsvg-convert -h 1000 $i -o $target -b white
    fi
    # inkscape -w 800 -h 800 $i -o $target
done