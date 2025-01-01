#!/bin/bash

# Kontrollera om yq är installerat
if ! command -v yq &> /dev/null; then
    echo "yq kunde inte hittas. Installera yq och försök igen."
    exit 1
fi

# Filnamn för README
output_file="README.md"

# Initiera README.md med titel och introduktion
cat <<EOL > $output_file
# Kubernetes Klusterkonfiguration

Detta dokument innehåller en översikt av alla Kubernetes-resurser definierade i YAML-filer inom detta projekt.

## Innehållsförteckning
EOL

# Funktion för att extrahera och skriva resursinformation
process_yaml() {
    local yaml_file=$1
    local namespace=$(yq e '.metadata.namespace // "default"' "$yaml_file")
    local kind=$(yq e '.kind' "$yaml_file")
    local name=$(yq e '.metadata.name' "$yaml_file")

    echo "- [$namespace / $kind: $name](#$namespace--$kind-$name)" >> $output_file
}

# Funktion för att skriva detaljerad information om resurser
write_resource_details() {
    local yaml_file=$1
    local namespace=$(yq e '.metadata.namespace // "default"' "$yaml_file")
    local kind=$(yq e '.kind' "$yaml_file")
    local name=$(yq e '.metadata.name' "$yaml_file")

    cat <<EOL >> $output_file

### $namespace / $kind: $name

- **Fil:** \`$yaml_file\`
- **Namespace:** $namespace
- **Typ:** $kind
- **Namn:** $name

EOL
}

# Hitta alla YAML-filer och bearbeta dem
find . -type f \( -name "*.yaml" -o -name "*.yml" \) | while read -r yaml_file; do
    process_yaml "$yaml_file"
done

# Lägg till sektion för resursdetaljer
echo -e "\n## Resursdetaljer" >> $output_file

# Skriv detaljer för varje resurs
find . -type f \( -name "*.yaml" -o -name "*.yml" \) | while read -r yaml_file; do
    write_resource_details "$yaml_file"
done

echo "README.md har skapats med information om alla YAML-filer."

