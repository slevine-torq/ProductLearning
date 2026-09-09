# -*- coding: utf-8 -*-
"""Builds a Task file from _TASK-TEMPLATE-TIERED.html.
Head/tokens come from the template verbatim, so no drift."""
import io, os, re

TPL = io.open(os.path.join(os.path.dirname(os.path.abspath(__file__)),
              "_TASK-TEMPLATE-TIERED.html"), encoding="utf-8").read()

HEAD = TPL.split("</style>\n</head>")[0]          # doctype + comment + head + all CSS
# Replace the template's build-instruction comment with a short per-file provenance note.
_c0 = HEAD.index("<!-- ====")
_c1 = HEAD.index("-->", _c0) + 3
HEAD = (HEAD[:_c0] +
        "<!-- Built from _TASK-TEMPLATE-TIERED.html. Tokens inlined, not @import'ed.\n"
        "     #43A8FF is 2.5:1 on white \u2014 rules, dividers and gradient stops only, never text. -->"
        + HEAD[_c1:])
# Tasks ship with no script block (spec §5b).

def build(path, title, extra_css="", body="", script=None):
    head = HEAD
    head = head.replace("⟦FILL: Task title⟧", title)
    if extra_css:
        head = head.replace("/* ===== RESPONSIVE / MOTION / PRINT ===== */",
                            extra_css + "\n/* ===== RESPONSIVE / MOTION / PRINT ===== */")
    out = head + "</style>\n</head>\n\n<body>\n" + body + "\n"
    if script:
        out += "<script>" + script + "</script>\n\n"
    out += "</body>\n</html>\n"
    io.open(path, "w", encoding="utf-8").write(out)
    return len(out)



TIERS = u"""  <!-- ===== TIER READS — required on every Task. Never gate or collapse. ===== -->
  <section id="tiers">
    <h2>The same content, read three ways</h2>
    <div class="tiers">
      <div class="tiers-head">
        <span class="label">All three reads, always visible</span>
        <p>Find yours, then read the other two anyway &mdash; that's how you know what the conversation above you sounds like.</p>
      </div>
      <div class="tier">
        <span class="tier-label">Tier 1 &mdash; a level deeper</span>
        <p>{t1}</p>
        <p class="move"><b>The move:</b> {m1}</p>
      </div>
      <div class="tier">
        <span class="tier-label">Tier 2 &mdash; the trade-off you can discuss</span>
        <p>{t2}</p>
        <p class="move"><b>The move:</b> {m2}</p>
      </div>
      <div class="tier">
        <span class="tier-label">Tier 3 &mdash; strategic &amp; risk read</span>
        <p>{t3}</p>
        <p class="move"><b>The move:</b> {m3}</p>
      </div>
    </div>
  </section>"""

REGULATED = u"""  <div class="callout">
    <span class="label">Regulated client?</span>
    <p>{body}</p>
  </div>"""

ONE_LEVEL_UP = u"""  <div class="callout">
    <span class="label">One level up:</span>
    <p>{body}</p>
  </div>"""


def page(path, course_no, course_name, task_no, task_total, title, standfirst,
         read_min, lede, sections, tiers, takeaways, nxt, extra_css=""):
    """Assemble a Task page. No artifact canvas, no script (spec §5b)."""
    tk = u"\n".join(u"      <li><b>%s</b> %s</li>" % (c, w) for c, w in takeaways)
    body = u"""<a class="skip-link" href="#main">Skip to content</a>

<header class="hero" data-surface="dark">
  <div class="wrap">
    <p class="eyebrow">Technical Fluency &middot; Course %d &middot; Task&nbsp;%d&nbsp;of&nbsp;%d</p>
    <h1>%s</h1>
    <p class="standfirst">%s</p>
    <div class="meta">
      <span><b>Course</b> %s</span>
      <span><b>Read time</b> ~%d min</span>
    </div>
  </div>
</header>
<div class="hero-rule"></div>

<main id="main">
<div class="wrap">

  <p class="lede">%s</p>

%s

%s

  <section id="takeaways">
    <h2>Key takeaways</h2>
    <ol class="takeaways">
%s
    </ol>
  </section>

  <div class="lesson-foot">
    <p><b>Next:</b> %s</p>
    <p>Technical Fluency for Transform Practice &middot; Course %d: %s</p>
  </div>

</div>
</main>""" % (course_no, task_no, task_total, title, standfirst, course_name,
              read_min, lede, sections, tiers, tk, nxt, course_no, course_name)
    return build(path, title, extra_css, body, None)
