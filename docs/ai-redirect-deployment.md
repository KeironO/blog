# AI Tool Redirect — Deployment

This site redirects AI tools and LLM indexers to a dedicated page at
`/ai-info/` using three layers:

| Layer | Files | Where it works |
| --- | --- | --- |
| Server-side redirect | `nginx/ai-redirect.conf` | VPS (keiron.xyz) only |
| robots.txt restriction | `static/robots.txt` | Both deployments |
| Client-side JS redirect | `layouts/partials/custom_head.html` | Both deployments |
| Static guidance | `static/llms.txt`, `content/ai-info.md` | Both deployments |

The server-side redirect is the most reliable because it runs before any
content is served. The robots.txt layer restricts well-behaved AI crawlers
to `/ai-info/` (robots.txt cannot issue HTTP redirects, so this is the
closest equivalent: the only page they are allowed to fetch is the one
intended for them). The JS redirect catches AI tools that render pages on
deployments without server access (the GitHub Pages mirror). The static
files give well-behaved crawlers a machine-readable route to the same
information.

## VPS (keiron.xyz)

### 1. Deploy the nginx config

```bash
scp nginx/ai-redirect.conf user@your-vps:/etc/nginx/conf.d/ai-redirect.conf
```

### 2. Add the redirect to your server block

Edit the nginx server block that serves the site (the one with
`root /var/www/html;`). Add these two `if` blocks — in this order:

```nginx
# AI agent redirect (uses the $ai_agent map from conf.d)
if ($request_uri ~ ^/ai-info/) {
    set $ai_agent 0;
}
if ($ai_agent = 1) {
    return 302 https://keiron.xyz/ai-info/;
}
```

The first block prevents a redirect loop on `/ai-info/` itself.

### 3. Validate and reload nginx

```bash
sudo nginx -t && sudo systemctl reload nginx
```

### 4. Rebuild and redeploy the site

```bash
./deploy-hugo.sh
```

This publishes the `/ai-info/` page, `/llms.txt`, and the updated
`robots.txt`. The existing deploy script already rsyncs the whole
`static/` and `content/` build output to `/var/www/html`.

## GitHub Pages mirror (KeironO.github.io/blog/)

No server configuration is possible there, so only the JS redirect and the
static files apply. Deployment is automatic:

1. Commit and push to `main`.
2. The `.github/workflows/hugo.yml` workflow rebuilds and deploys.
3. The redirect target resolves to `/blog/ai-info/` via Hugo's
   `RelPermalink`, so the JS layer works on the mirror too.

Note: AI crawlers that do not execute JavaScript will not be redirected on
the mirror. The VPS is the authoritative deployment for those.

## Verification

Test from a machine on the local network (or locally with `serve.sh`):

```bash
# AI agent — should receive a redirect (302 on VPS)
curl -I -A "ChatGPT-User" https://keiron.xyz/
curl -I -A "GPTBot" https://keiron.xyz/
curl -I -A "ClaudeBot" https://keiron.xyz/
curl -I -A "PerplexityBot" https://keiron.xyz/

# Normal user agent — should NOT be redirected
curl -I -A "Mozilla/5.0 (X11; Linux x86_64) Firefox/128.0" https://keiron.xyz/

# The AI info page itself — must NOT redirect (no loop)
curl -I -A "ChatGPT-User" https://keiron.xyz/ai-info/
```

On the VPS check the nginx layer with:

```bash
sudo tail -f /var/log/nginx/access.log
```

## Maintenance

When a new AI crawler appears, add its user agent in three places (keep
the lists in sync):

1. `nginx/ai-redirect.conf` — the `map` block (VPS layer).
2. `static/robots.txt` — a `User-agent:` entry in the relevant group
   (restriction layer, applies everywhere).
3. `layouts/partials/custom_head.html` — the `aiTokens` array (JS layer).

Then redeploy per the steps above.

Useful reference lists: https://darkvisitors.com/ and
https://github.com/ai-robots-txt/ai.robots.txt

## Customising the AI info page

The content AI agents see lives in `content/ai-info.md`. Edit it directly
and redeploy — the redirects all point at it, so no other changes are
needed.
