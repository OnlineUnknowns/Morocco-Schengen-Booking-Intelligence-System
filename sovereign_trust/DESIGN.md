---
name: Sovereign Trust
colors:
  surface: '#f8f9ff'
  surface-dim: '#cbdbf5'
  surface-bright: '#f8f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#eff4ff'
  surface-container: '#e5eeff'
  surface-container-high: '#dce9ff'
  surface-container-highest: '#d3e4fe'
  on-surface: '#0b1c30'
  on-surface-variant: '#45464d'
  inverse-surface: '#213145'
  inverse-on-surface: '#eaf1ff'
  outline: '#76777d'
  outline-variant: '#c6c6cd'
  surface-tint: '#565e74'
  primary: '#000000'
  on-primary: '#ffffff'
  primary-container: '#131b2e'
  on-primary-container: '#7c839b'
  inverse-primary: '#bec6e0'
  secondary: '#006c49'
  on-secondary: '#ffffff'
  secondary-container: '#6cf8bb'
  on-secondary-container: '#00714d'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#07006c'
  on-tertiary-container: '#7073ff'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dae2fd'
  primary-fixed-dim: '#bec6e0'
  on-primary-fixed: '#131b2e'
  on-primary-fixed-variant: '#3f465c'
  secondary-fixed: '#6ffbbe'
  secondary-fixed-dim: '#4edea3'
  on-secondary-fixed: '#002113'
  on-secondary-fixed-variant: '#005236'
  tertiary-fixed: '#e1e0ff'
  tertiary-fixed-dim: '#c0c1ff'
  on-tertiary-fixed: '#07006c'
  on-tertiary-fixed-variant: '#2f2ebe'
  background: '#f8f9ff'
  on-background: '#0b1c30'
  surface-variant: '#d3e4fe'
typography:
  h1:
    fontFamily: Inter
    fontSize: 30px
    fontWeight: '700'
    lineHeight: 38px
    letterSpacing: -0.02em
  h2:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.01em
  h3:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
    letterSpacing: -0.01em
  body-lg:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
    letterSpacing: '0'
  body-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
    letterSpacing: '0'
  label-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
    letterSpacing: '0'
  label-sm:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
    letterSpacing: 0.02em
  tabular-nums:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
    letterSpacing: '0'
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  sidebar_width: 260px
  container_max_width: 1440px
  gutter: 24px
  margin_page: 32px
  stack_sm: 8px
  stack_md: 16px
  stack_lg: 24px
---

## Brand & Style

The design system is engineered to project institutional reliability and administrative precision. Targeting government liaisons and high-volume travel agents, the aesthetic balances the authority of a financial institution with the agility of a modern SaaS platform.

The chosen style is **Corporate Modern**, prioritizing clarity and structure. It utilizes a rigorous information hierarchy and a "utilitarian-premium" approach—where every element serves a functional purpose, but is executed with refined finishes. The UI evokes a sense of security through stable, geometric layouts and a restrained color application that highlights only the most critical data points.

## Colors

The palette is anchored by **Deep Sapphire Blue**, used for primary navigation and high-level actions to ground the interface in professionalism. **Crisp White** serves as the primary canvas for workspaces, ensuring maximum legibility for complex visa documentation.

Functional accents include **Emerald Green** for positive status indicators and success states. Neutral grays are utilized for secondary text and borders to maintain high contrast without causing visual fatigue. The color logic follows a high-signal approach: color is used sparingly to draw attention to status changes and actionable items within dense data environments.

## Typography

This design system utilizes **Inter** exclusively to leverage its exceptional legibility at small sizes and its neutral, systematic character. The typographic scale is optimized for high information density.

For data tables and application lists, "Tabular Numerals" must be used to ensure columns of figures align vertically, facilitating easier comparison. Headlines use tighter letter-spacing for a modern, compact look, while labels and captions utilize slightly increased weight to maintain visibility against varying backgrounds.

## Layout & Spacing

The layout follows a **Fixed Sidebar / Fluid Workspace** model. The sidebar remains locked at 260px to provide a consistent navigation anchor, while the workspace expands to fit the viewport, optimized for 1440px displays.

A strict 8px spacing grid governs the rhythm. High information density is achieved not by crowding elements, but by using consistent "logical grouping." Modules are separated by 24px gutters, while internal components (like form fields) use 16px vertical stacks. Generous outer margins (32px) ensure the content feels focused and prestigious, preventing the "cluttered dashboard" effect common in legacy systems.

## Elevation & Depth

To maintain a crisp and modern appearance, this design system avoids heavy shadows. Depth is communicated through **Tonal Layering** and **Low-Contrast Outlines**.

1.  **Level 0 (Surface):** The workspace background is #FFFFFF.
2.  **Level 1 (Cards):** Containers for data tables and forms use a 1px border (#E2E8F0) with no shadow. 
3.  **Level 2 (Interactions):** Modals and dropdown menus use a subtle "Ambient Shadow"—a 12px blur with 5% opacity and a slight sapphire tint (#0F172A) to lift them off the page.

Navigation depth is established by the Sidebar using the darkest value (#0F172A), acting as the foundation for the entire application.

## Shapes

The shape language is **Soft** and disciplined. A 4px (0.25rem) corner radius is the standard for most UI components (buttons, input fields, cards), providing a modern touch without appearing overly consumer-focused or "playful."

Status badges and tags may use a slightly higher radius (8px or 12px) to differentiate them from actionable buttons, but they should never be fully pill-shaped. This geometric consistency reinforces the brand's message of efficiency and structural integrity.

## Components

### Data Tables
Tables are the core of this design system. They feature high-contrast headers with a light-gray background (#F8FAFC) and subtle dividers. Row hover states use a very faint blue tint (#F1F5F9). Columns containing status indicators must use the defined Status Badges.

### Status Badges
Badges use a "Soft Background" approach: a light tint of the status color (e.g., 10% opacity Emerald) with dark text of the same hue for maximum legibility and a sophisticated, non-aggressive appearance.

### Buttons
- **Primary:** Solid Deep Sapphire (#0F172A) with white text.
- **Secondary:** White background with a 1px Sapphire border.
- **Success:** Solid Emerald (#10B981) with white text (used for final submissions).

### Form Modules
Forms are organized in clearly defined modules with section headers. Each input field must have a persistent label and a subtle 1px border that thickens and changes to Sapphire on focus.

### Additional Components
- **Progress Stepper:** A horizontal track used for visa application stages, showing completed, active, and upcoming steps.
- **Document Preview Cards:** Small, bordered containers for uploaded files with quick-action icons (view, delete).