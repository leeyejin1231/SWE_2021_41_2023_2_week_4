cd files

for file in *; do
    if [ -f "$file" ]; then
        first_letter="${file:0:1}"
        first_letter_lowercase="$(echo "$first_letter" | tr '[:upper:]' '[:lower:]')"

        mv "$file" "../$first_letter_lowercase/"
    fi
done
