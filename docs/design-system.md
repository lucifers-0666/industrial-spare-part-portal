# Light Industrial Design System Guidelines
## Industrial Spare-Part Finder & Emergency Procurement Portal

---

## 1. Design Philosophy & Visual Identity

The design system establishes a **Light Industrial Technology Language**:
- **Bright & Clean Foundation**: 80%+ of all surfaces are light, clean, and spacious.
- **High-Contrast Readability**: Dark slate text (`#172033` / `#0F172A`) on light slate backgrounds (`#F8FAFC`) and crisp white surfaces (`#FFFFFF`). Zero low-opacity or unreadable text.
- **Semantic Color Usage**: Blue represents primary actions; Safety Orange represents breakdown emergencies; Refined Copper represents hardware metadata accents; Industrial Charcoal grounds structural footers.
- **Honest Academic Platform**: All demonstrative features, pricing simulations, and academic prototype disclosures are explicitly labeled to maintain project integrity.

---

## 2. Color System Specifications

| Token Name | Hex Code | Semantic Role & Usage |
| :--- | :--- | :--- |
| **Primary Page Background** | `#F8FAFC` | Primary light slate background for public landing pages. |
| **Secondary Background** | `#F1F5F9` | Alternating section background for visual section rhythm. |
| **Surface Card Background** | `#FFFFFF` | Pure white cards with `#D9E1EA` / `#E2E8F0` borders and subtle elevation. |
| **Primary Text** | `#0F172A` / `#172033` | ExtraBold/Bold primary typography (100% contrast). |
| **Secondary Text** | `#475569` / `#526174` | Subhead body copy and supporting descriptions. |
| **Border Light** | `#D9E1EA` / `#CBD5E1` | Structural card borders and divider lines. |
| **Primary Action Blue** | `#1677FF` / `#2563EB` | Main action buttons (`btn-primary`), primary search tabs, and focus rings. |
| **Secondary Blue** | `#3B91FF` / `#3B82F6` | Hover states, active links, and status highlights. |
| **Emergency Safety Orange** | `#F97316` / `#EA580C` | High-priority breakdown alerts (`btn-emergency`) and emergency dispatch indicators. |
| **Refined Copper Accent** | `#B87333` | Technical hardware badges (`copper-badge`), metadata tags (`copper-tag`). |
| **Industrial Charcoal** | `#1E293B` / `#0F172A` | Concise, grounded enterprise footer. |

---

## 3. Typography Scale & Layout Standards

- **Max Container Width**: `1408px` (`max-w-7xl mx-auto px-4 sm:px-6 lg:px-8`).
- **Desktop Hero Headline**: `40px – 56px` (`text-3xl sm:text-4xl lg:text-5xl font-black tracking-tight`).
- **Section Headings**: `28px – 36px` (`text-2xl sm:text-3xl font-extrabold text-slate-900`).
- **Body Text**: `15px – 16px` (`text-slate-600 leading-relaxed`).
- **Technical Metadata**: `11px – 13px` (`font-mono font-bold uppercase tracking-wider`).

---

## 4. Navigation & Active State Guidelines

### Restrained Route-Aware Active Indicators
Navigation links must clearly convey location without visually overpowering the top bar:
- **Active State Rule**: Never use chunky saturated button backgrounds or heavy colored pills for the active navigation state.
- **Desktop Implementation**: Use a restrained 2px bottom accent underline (`border-bottom: 2px solid var(--color-brand-primary)` or `border-b-2 border-blue-600`) with bold text and `aria-current="page"`.
- **Mobile Drawer Implementation**: Use a subtle left border accent (`border-l-4 border-blue-600`) with a light tint background (`bg-blue-50/70`) and text color shift (`text-blue-700`).
- **Accessibility**: Include clear `:focus-visible` dashed outlines (`outline: 2px dashed #2563EB; outline-offset: 2px`) for keyboard tab navigation.

---

## 5. Form Design & Input Group Standards

To eliminate icon-text collisions, autofill overlap, and password manager clipping:
1. **Label Placement**: Always position input labels externally above the input field with clean typography (`block text-xs font-bold text-slate-700 uppercase tracking-wider mb-1.5`).
2. **Standard Padding**: Use standard, consistent padding (`px-3.5 py-2.5`) across all input controls. Do not place absolute floating icons inside the input text path.
3. **Browser Autocomplete**: Always provide standards-compliant autocomplete attributes (`autocomplete="email"`, `autocomplete="current-password"`, `autocomplete="new-password"`, `autocomplete="tel"`, `autocomplete="organization"`).
4. **Action Toggles**: Client-side password view toggles must be non-interfering interactive buttons (`type="button"`) positioned safely in the right margin with adequate clearance.
5. **Role Selector Cards**: Multi-role registration cards should feature clear radio targets, highlighted border transitions on selection (`border-blue-600 bg-blue-50/40`), and descriptive role summaries.

---

## 6. Responsive Layout Patterns

### Dual Comparison System (`WhyUs.aspx`)
- **Desktop (≥ 768px)**: Rich tabular comparison matrix comparing Traditional Sourcing vs. SPAREFINDER Portal across 7 technical vectors.
- **Mobile (< 768px)**: Stacked comparison cards displaying side-by-side metric cards (Traditional friction vs SPAREFINDER digital resolution), eliminating horizontal scrolling and squished table columns.

### 3-Phase Lifecycle Diagram (`HowItWorks.aspx`)
Instead of a single sprawling list of arbitrary stages, operational workflows are grouped into 3 coherent phases:
1. **Phase 1: Catalog Discovery & Specification Matching** (OEM lookup, tolerance checks).
2. **Phase 2: Commercial Quotation & Order Confirmation** (Multi-vendor bids, purchase approvals).
3. **Phase 3: Logistics Dispatch & Technician Commissioning** (Rapid field delivery, certified deployment).

---

## 7. Motion & Accessibility Standards

- **Transitions**: Smooth, subtle micro-interactions between 150ms and 200ms (`transition-all duration-200 ease-out`).
- **Reduced Motion Support**:
  ```css
  @media (prefers-reduced-motion: reduce) {
      *, *::before, *::after {
          animation-duration: 0.01ms !important;
          animation-iteration-count: 1 !important;
          transition-duration: 0.01ms !important;
          scroll-behavior: auto !important;
      }
  }
  ```

