# Set the path to the PlantUML JAR file
plantuml_jar="tools/plantuml.jar"

# Find and process DynamicView.puml and StaticView.puml files in the journeys directory
find journeys -type f \( -name "DynamicView.puml" -o -name "StaticView.puml" \) -print0 | while IFS= read -r -d $'\0' file; do
    echo "Processing $file"
    relative_path="${file#journeys/}"
    output_dir="../../../builds/$(dirname "$relative_path")"
    java -Djava.awt.headless=true -jar "$plantuml_jar" -o "$output_dir" "$file"
done

echo "Finished generating diagrams."