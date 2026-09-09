#!/bin/bash
# Torq task audit — bar: banned:0 · gradient:1 · focus:3 · globalEvent:0 · js:OK
for f in "$@"; do
  banned=$(grep -oiE '#(3F39B8|51DCFE|5EFFCC|BEFFEA|B9F1FE|030F36|FAFAFB|1F1A78)' "$f" | wc -l | tr -d ' ')
  grad=$(grep -c 'linear-gradient(120deg, #2D53F2, #3A79F8 55%, #43A8FF)' "$f")
  focus=$(grep -oE '(focus-visible|skip-link:focus) \{' "$f" | wc -l | tr -d ' ')
  ge=$(grep -oE '[^.a-zA-Z]event\.' "$f" | wc -l | tr -d ' ')
  stray=$(grep -oiE '#[0-9a-f]{6}' "$f" | tr 'a-f' 'A-F' | sort -u | grep -vE '#(2D53F2|3A79F8|43A8FF|10213D|F6F9FF|E5E5E9|F2F2F2|FFFFFF|00B050|E5484D|E8EFFF)' | tr '\n' ' ')
  js=$(node --check <(sed -n '/<script>/,/<\/script>/p' "$f" | sed '1d;$d') 2>&1 >/dev/null && echo OK || echo FAIL)
  [ -z "$(sed -n '/<script>/,/<\/script>/p' "$f")" ] && js="OK (none)"
  fills=$(grep -c '⟦' "$f")
  words=$(python3 - "$f" <<'PYX'
import sys,re,html,io
s=io.open(sys.argv[1],encoding="utf-8").read()
s=s.split('<main id="main">')[1].split('</main>')[0] if '<main id="main">' in s else s
s=re.sub(r'(?s)<script.*?</script>|<style.*?</style>|<!--.*?-->','',s)
s=re.sub(r'(?s)<[^>]+>',' ',s)
print(len(html.unescape(s).split()))
PYX
)
  tags=$(python3 - "$f" <<'PYT'
import sys,re,io
s=io.open(sys.argv[1],encoding="utf-8").read()
s=s.split('<main id="main">')[1].split('</main>')[0] if '<main id="main">' in s else s
s=re.sub(r'(?s)<script.*?</script>|<!--.*?-->','',s)
bad=[t for t in ("div","ul","ol","li","section","p","table","span")
     if len(re.findall(r'<%s\b'%t,s))!=len(re.findall(r'</%s>'%t,s))]
print(",".join(bad) if bad else "ok")
PYT
)
  echo "$(basename "$f") :: banned:$banned · gradient:$grad · focus:$focus · globalEvent:$ge · js:$js · words:$words · fills:$fills · tags:$tags · stray:[${stray}]"
done
