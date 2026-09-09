# Build Prompt — Product Practices HTML

Paste the prompt below into whatever AI tool is available, with the contents of `Torq - Product Practices.md` pasted underneath it (or attached, if the tool supports attachments).

---

## The prompt

Build a single, self-contained HTML page from the markdown document at the end of this message. It is an internal reference document on product practices. Output the complete HTML file and nothing else — no explanation before or after.

**Hard requirements**

- One file. Everything inline: all CSS in a single `<style>` block in the head, no external stylesheets, no CDN links, no web fonts, no JavaScript libraries, no external images. It must render correctly with no network access.
- Use a system font stack only: `Georgia, 'Times New Roman', serif` for headings, and `-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif` for body text.
- Preserve every piece of content from the markdown: all seven sections, every bullet, every research insight with its source attribution, and every link. Do not summarize, condense, reorder, or editorialize. The links must remain clickable and open in a new tab.
- Responsive down to mobile width. No horizontal scrolling on the page body.
- Semantic HTML: `<h1>`, `<h2>`, `<h3>`, `<ul>`, `<section>`. Close every tag, quote every attribute.

**Visual design**

Restrained editorial document styling — this is a reference people read, not a marketing page. No hero section, no gradients, no emoji, no icons, no decorative flourishes, no cards with colored left borders.

Palette (use these exact values):
- Page background: `#f2f1ec`
- Raised block background: `#ffffff`
- Primary text: `#1c1d22`
- Secondary text: `#4a4c54`
- Muted text: `#83858d`
- Hairline rules: `#d9d7cd`
- Accent (links, section numbers): `#2b4570`
- Accent tint (source tag background): `#e4e8f0`

Layout and type:
- Content column max-width 760px, centered, with generous padding — roughly 4rem top, 1.5rem sides.
- H1 in the serif face, around 2.6rem, weight 500, tight line-height, letter-spacing -0.01em.
- Section H2s in the serif face, around 1.4rem, each preceded by its number (01, 02, 03…) set in the accent color at a smaller size, sitting to the left of the heading.
- Sub-headings ("In practice", "The eight fields", "What the research says", "Learn more") rendered as small uppercase labels — around 0.66rem, letter-spacing 0.1em, in the muted text color — not as large headings.
- Body text 16px, line-height 1.6, running text kept near 65–70 characters wide.
- A 1px hairline rule between each of the seven sections, with generous vertical spacing around it.

Component details:
- **In practice / eight fields lists** — sit inside a white block with a 1px hairline border and ~8px radius. The bolded term at the start of each bullet stays in the primary text color; the explanation after the em dash in the secondary color.
- **Research insight rows** — each insight is one row: the paraphrased text on the left, and the source name on the right as a small pill (accent-tint background, accent-colored text, fully rounded, ~0.68rem) that links to the source URL. Separate consecutive rows with a hairline rule. On narrow screens, let the pill wrap below the text.
- **Learn more links** — rendered as rounded outlined chips (white background, hairline border, ~0.86rem), each showing the link title followed by its domain in a smaller muted color. On hover, the border and text shift to the accent color.

**Page metadata**

- `<title>`: Product Practices for an AI-Accelerated Team
- Set `lang="en"` and a UTF-8 charset meta tag and a viewport meta tag.
- Give links a visible focus state for keyboard navigation.

Do not add a footer, a byline, a date, a table of contents, a logo, or any content that is not in the source markdown.

---

**Markdown document follows:**

[paste the full contents of `Torq - Product Practices.md` here]
