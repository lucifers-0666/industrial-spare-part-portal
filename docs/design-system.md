# Light Industrial Design System Guidelines
## Industrial Spare-Part Finder & Emergency Procurement Portal

---

## 1. Design Philosophy & Visual Identity

The design system establishes a **Light Industrial Technology Language**:
- **Bright & Clean Foundation**: 80%+ of all surfaces are light, clean, and spacious.
- **High-Contrast Readability**: Dark slate text (`#172033`) on light background (`#F8FAFC`) / crisp white surfaces (`#FFFFFF`). Zero low-opacity or hard-to-read text.
- **Semantic Color Usage**: Blue represents primary actions; Orange represents breakdown emergencies; Copper represents hardware metadata accents; Charcoal is used strictly for footer grounding.

---

## 2. Color System Specifications

| Token Name | Hex Code | Semantic Role & Usage |
| :--- | :--- | :--- |
| **Primary Page Background** | `#F8FAFC` | Primary light slate background for public landing pages. |
| **Secondary Background** | `#F1F5F9` | Alternating section background for visual section rhythm. |
| **Surface Card Background** | `#FFFFFF` | Pure white cards with `#D9E1EA` borders and soft physical shadows. |
| **Primary Text** | `#172033` | ExtraBold/Bold primary typography (100% contrast). |
| **Secondary Text** | `#526174` | Subhead body copy and supporting descriptions. |
| **Border Light** | `#D9E1EA` | Structural card borders and divider lines. |
| **Primary Action Blue** | `#1677FF` | Main action buttons (`btn-primary`), primary search tabs, and focus rings. |
| **Secondary Blue** | `#3B91FF` | Hover states, active links, and status highlights. |
| **Emergency Orange** | `#F97316` | High-priority breakdown alerts (`btn-emergency`) and emergency indicators. |
| **Refined Copper Accent** | `#B87333` | Technical hardware badges (`copper-badge`), metadata tags (`copper-tag`). |
| **Industrial Charcoal** | `#273444` | Used strictly for the compact enterprise footer at the bottom. |

---

## 3. Typography Scale & Layout Standards

- **Max Container Width**: `1408px` (`max-w-8xl mx-auto px-6 lg:px-12`).
- **Desktop Hero Headline**: `56px – 72px` (`text-4xl sm:text-5xl lg:text-6xl font-black`).
- **Section Headings**: `36px – 48px` (`text-3xl sm:text-4xl font-black`).
- **Body Text**: `16px – 18px` (`text-[#526174] leading-relaxed`).
- **Technical Metadata**: `12px – 14px` (`font-mono font-bold uppercase`).

---

## 4. Component Rules & CSS Utility Classes

### 1. Primary Action Button (`.btn-primary`)
```css
.btn-primary {
  @apply bg-[#1677FF] hover:bg-[#0958D9] text-white font-bold px-6 py-3.5 rounded-xl transition-all duration-200 inline-flex items-center justify-center gap-2.5 shadow-md text-sm;
}
```

### 2. Emergency Procurement Button (`.btn-emergency`)
```css
.btn-emergency {
  @apply bg-[#F97316] hover:bg-[#EA580C] text-white font-extrabold px-6 py-3.5 rounded-xl transition-all duration-200 inline-flex items-center justify-center gap-2.5 shadow-md text-sm;
}
```

### 3. Glass Header Accent (`.glass-header-light`)
```css
.glass-header-light {
  background: rgba(255, 255, 255, 0.85);
  backdrop-filter: blur(12px);
  -webkit-backdrop-filter: blur(12px);
  border-bottom: 1px solid #D9E1EA;
}
```

### 4. Technical Copper Metadata Tag (`.copper-tag`)
```css
.copper-tag {
  @apply text-xs font-mono font-bold tracking-wider text-[#B87333] bg-amber-500/10 border border-amber-500/30 px-2.5 py-0.5 rounded-md;
}
```
