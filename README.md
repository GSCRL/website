# Garden State Combat Robotics League Website

This repository contains the static website for the Garden State Combat Robotics League (GSCRL), hosted on GitHub Pages at [https://gscrl.org](https://gscrl.org).

The site is built on the HTML5 UP **Hyperspace** template. It uses plain HTML, SCSS (compiled to CSS), jQuery, and Font Awesome.

> **New to GitHub or code editing?** See [`docs/GETTING_STARTED.md`](./docs/GETTING_STARTED.md) for a beginner-friendly guide that assumes only Google Sites experience.
>
> **For AI coding agents:** See [`AGENTS.md`](./AGENTS.md) for project conventions, safe-edit rules, and the contributor workflow.

---

## Table of contents

- [What you need installed](#what-you-need-installed)
- [Initial setup](#initial-setup)
- [Working with opencode / openchamber](#working-with-opencode--openchamber)
- [Editing workflow](#editing-workflow)
- [Previewing your changes](#previewing-your-changes)
- [Branch, pull request, review, and merge](#branch-pull-request-review-and-merge)
- [Troubleshooting](#troubleshooting)

---

## What you need installed

You only need a few lightweight tools. **Node.js and npm are NOT required** unless you prefer them.

| Tool | Purpose | How to install |
|------|---------|----------------|
| **Git** | Clone and push changes | [git-scm.com](https://git-scm.com) |
| **GitHub account** | Open pull requests | [github.com](https://github.com) |
| **Dart Sass** | Compile SCSS to CSS | [Download standalone `sass` binary](https://github.com/sass/dart-sass/releases) and put it on your `PATH` |
| **just** | Run common commands | [casey/just](https://github.com/casey/just) |
| **Python 3** | Local preview server | Usually pre-installed |
| **Visual Studio Code** *(optional)* | Editing and AI assistants | [code.visualstudio.com](https://code.visualstudio.com) |
| **opencode / openchamber** *(optional)* | AI-assisted editing | [opencode.ai](https://opencode.ai/) / [openchamber](https://github.com/openchamber/openchamber) |

Confirm everything is available:

```bash
git --version
sass --version
just --version
python3 --version
```

---

## Initial setup

1. **Clone the repository**

   ```bash
   git clone git@github.com:GSCRL/website.git
   cd website
   ```

2. **Make sure you are on the latest `main` branch**

   ```bash
   git checkout main
   git pull origin main
   ```

3. **Open the folder in your editor**

   - In VS Code: `code .`
   - In opencode / openchamber: open the `website` folder as your workspace.

---

## Working with opencode / openchamber

opencode and openchamber are conversational AI tools that can help edit the site locally. They read the project files (including [`AGENTS.md`](./AGENTS.md)) and run commands on your machine.

- opencode: [https://opencode.ai/](https://opencode.ai/)
- openchamber: [https://github.com/openchamber/openchamber](https://github.com/openchamber/openchamber)

### Opening the project

Install the tool of your choice, then open the `website` folder in its interface or run it from inside the repo.

### Typical requests

You can ask the AI to help with edits such as:

- "Add the June Jumble event to the home page."
- "Update the sponsor logos and add alt text."
- "Compile the SCSS and preview the site."
- "Create a branch, commit my changes, and open a pull request."

### What the AI should do for you

The AI should follow the workflow in [`AGENTS.md`](./AGENTS.md):

- Create a feature branch from `main`
- Make minimal, focused changes
- Compile SCSS with `just build` if styles changed
- Preview locally with `just serve`
- Commit changes with clear messages
- Push the branch and (optionally) help open a pull request

You remain in control: review every diff before committing or merging.

---

## Editing workflow

This project uses a branch-and-pull-request workflow. **Never commit directly to `main`.**

### 1. Create a feature branch

Use a descriptive name:

```bash
git checkout -b feature/update-sponsors-2025-2026
# or: update/event-dates, fix/broken-links, content/new-season-page
```

### 2. Make your edits

Common files:

- `index.html` — home page, events, sponsors, contact form
- `event_info.html` — event registration and rules overview
- `support.html` — volunteering / hosting / donation info
- `start.html` — "Get Started" beginner page
- `assets/sass/**/*.scss` — styles (source of truth)
- `images/` — photos and logos

### 3. Compile SCSS if you changed styles

The CSS files in `assets/css/` are generated. After any SCSS edit, run:

```bash
just build
```

This compiles:

- `assets/sass/main.scss` → `assets/css/main.css`
- `assets/sass/noscript.scss` → `assets/css/noscript.css`

**Do not edit `assets/css/*.css` by hand.** Those files are overwritten on the next compile.

### 4. Commit your changes

Commit both the SCSS source and the generated CSS together:

```bash
git add -A
git commit -m "Update sponsor grid for 2025-2026 season"
```

Keep commits focused and descriptive.

---

## Previewing your changes

To see the site locally before pushing:

```bash
just serve
```

Then open [http://localhost:8000](http://localhost:8000) in your browser.

To compile and serve in one step:

```bash
just dev
```

### Preview checklist

Review every page you changed at:

- Desktop width (wide browser)
- Mobile width (narrow browser or device mode)

Check for broken links, missing images, and text layout issues.

---

## Branch, pull request, review, and merge

### Push your branch

```bash
git push -u origin feature/update-sponsors-2025-2026
```

### Open a pull request

1. Go to [https://github.com/GSCRL/website/pulls](https://github.com/GSCRL/website/pulls)
2. Click **New pull request**
3. Select your feature branch and compare it to `main`
4. Add a short title and description
5. Include:
   - What changed and why
   - Which pages you previewed locally
   - Whether you recompiled SCSS (`just build` or equivalent)

### Reviewer process

Because GitHub Pages does not provide PR previews, the reviewer must pull the branch down and preview it locally:

```bash
git fetch origin pull/<PR_NUMBER>/head:pr-<PR_NUMBER>
git checkout pr-<PR_NUMBER>
just serve
# review at http://localhost:8000
```

If changes are needed, the reviewer leaves feedback on GitHub. The contributor pushes additional commits to the same branch.

### Merge and deploy

Once approved, the reviewer merges the pull request on GitHub. GitHub Pages automatically redeploys `main` to `gscrl.org` and `www.gscrl.org`.

After merging, clean up your local branch:

```bash
git checkout main
git pull origin main
git branch -d feature/update-sponsors-2025-2026
```

---

## Troubleshooting

### `sass: command not found`

You need the Dart Sass standalone binary. Download it from [https://github.com/sass/dart-sass/releases](https://github.com/sass/dart-sass/releases) and make sure it is on your `PATH` as `sass`.

### `just: command not found`

See [https://github.com/casey/just](https://github.com/casey/just) for installation instructions.

### `just build` does nothing / CSS is not updating

Make sure you are editing files in `assets/sass/`, not `assets/css/`. The CSS files are generated; the Sass files are the source of truth.

### `python3 -m http.server` shows directory listing instead of the site

Make sure you run the server from the repository root (the folder containing `index.html`).

### My SCSS changes are not visible in the browser

Run `just build` again and refresh the browser. If the browser caches aggressively, open developer tools and hard-refresh with `Ctrl+Shift+R` (or `Cmd+Shift+R` on macOS).

---

## Quick reference

```bash
just --list     # show all available commands
just build      # compile SCSS to CSS
just serve      # start local preview at http://localhost:8000
just dev        # compile and serve in one step
```

For the full agent-facing conventions and safe-edit rules, see [`AGENTS.md`](./AGENTS.md).
