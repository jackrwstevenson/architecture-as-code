# Components

This directory contains reusable PlantUML components, partitions, and design decisions that can be shared across multiple journeys.

## Purpose

Components help maintain consistency and reduce duplication by:
- Defining common architectural patterns
- Standardizing visual representations
- Documenting reusable design decisions
- Sharing service definitions across diagrams

## Usage

Include components in your journey diagrams using PlantUML's `!include` directive:

```plantuml
!include ../../components/your-component.puml
```

## Structure

Each component should contain:
- PlantUML files defining reusable diagram elements
- Markdown files documenting design decisions and usage guidelines
- Examples demonstrating how to use the component

## Example Components

Typical components might include:
- Authentication flows
- API Gateway patterns
- Database interaction patterns
- Notification service integrations
- Common error handling flows
