if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <repository>" >> /dev/stderr
    exit 1
fi

(
    cd "$1"
    make doc
)
rm -f *.html *.css
cp "$1"/target/doc/*.{html,css} .
