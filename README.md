# Cursor Rules

A comprehensive collection of development rules and standards for use with Cursor IDE.

## Overview

This repository contains a curated set of development rules designed to enhance productivity, maintain code quality, and standardize development practices when working with Cursor IDE. These rules cover various aspects of software development, from coding standards to project management.

> **DEPRECATION NOTICE**: The single `.cursorrules` file format is deprecated. All rules should now be stored as individual `.mdc` files in the `.cursor/rules/` directory. This allows for better organization, easier updates, and more focused rule management.

## Installation

1. Create a `.cursor/rules` directory in your project:

   ```bash
   mkdir -p .cursor/rules
   ```

2. Clone and copy the rules you need:

   ```bash
   git clone git@github.com:andrew-malone-cko/cursor_rules.git
   cp cursor_rules/.cursor/rules/* your-project/.cursor/rules/
   ```

   Or sync using the provided process in `cursor_rules_sync.mdc`

## Rule Categories

1. **Development Standards**

   - dotnet specific guidelines
   - Auto-formatting rules

2. **Testing & Quality**

   - Test-Driven Development practices
   - API debugging standards
   - Logging and monitoring

3. **Documentation & Planning**

   - Documentation standards
   - Plan management
   - Task tracking

4. **Version Control**

   - Git commit standards
   - Rules synchronization
   - Change management

5. **Problem Solving**

   - Standardized approaches
   - Debugging patterns
   - Console interactions

6. **Rule Management**
   - Organization standards
   - Rule maintenance
   - Compliance tracking

## Rule Structure

Each rule follows a standard format:

```markdown
# Rule Title

# Brief description

<rule>
name: rule_name
description: Detailed description
version: x.y.z
author: Author Name
date: YYYY-MM-DD
globs:
  - "pattern/**/*.ext"
tags:
  - category
  - type
...
</rule>
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Follow the rule structure above
4. Update version numbers
5. Add changelog entries
6. Submit a pull request

### Rule Guidelines

- Keep rules focused and specific
- Include clear examples
- Document use cases
- Provide troubleshooting steps
- Follow semantic versioning
- Review for sensitive data

## Security

- Never commit sensitive data
- Use example.com for URLs
- Use placeholder values
- Remove internal references

## Maintenance

Rules are regularly reviewed and updated. Changes are documented in:

- Rule changelogs
- Commit messages
- Version history

## License

MIT License - See LICENSE file for details

## Acknowledgments

- Contributors to the rule set
- Cursor IDE team
- Community feedback and suggestions
