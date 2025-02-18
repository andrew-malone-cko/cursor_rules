#!/bin/bash

# Check if feature name is provided
if [ -z "$1" ]; then
    echo "Usage: ./create-feature-docs.sh <feature-name>"
    exit 1
fi

FEATURE_NAME=$1
DOCS_DIR="../../features/$FEATURE_NAME"
TEMPLATE_DIR="."

# Create feature documentation directory
mkdir -p "$DOCS_DIR"

# Copy template files
cp "$TEMPLATE_DIR/README.md" "$DOCS_DIR/"
cp "$TEMPLATE_DIR/architecture.md" "$DOCS_DIR/"
cp "$TEMPLATE_DIR/components.md" "$DOCS_DIR/"
cp "$TEMPLATE_DIR/api.md" "$DOCS_DIR/"
cp "$TEMPLATE_DIR/testing.md" "$DOCS_DIR/"

# Create assets directory
mkdir -p "$DOCS_DIR/assets"

# Replace placeholders with feature name
for file in "$DOCS_DIR"/*.md; do
    sed -i "" "s/{Feature Name}/$FEATURE_NAME/g" "$file"
    sed -i "" "s/{feature-name}/${FEATURE_NAME,,}/g" "$file"
done

echo "Feature documentation structure created at $DOCS_DIR"
echo "Don't forget to:"
echo "1. Update the feature overview in README.md"
echo "2. Add architecture diagrams in architecture.md"
echo "3. Document components in components.md"
echo "4. Specify API endpoints in api.md"
echo "5. Add test cases in testing.md" 