# Getting Started with the GSCRL Website

> This guide is for **beginners**. If you have used Google Sites, WordPress, or other "click to edit" website builders, this is for you.

You do **not** need to be a programmer to update the GSCRL website. Most of the hard parts can be done by an AI assistant. Your job is to describe what you want, review the changes, and say "yes" when it looks right.

---

## How this is different from Google Sites

| Google Sites | GSCRL website |
|--------------|---------------|
| Edit directly in the browser | Edit files on your own computer first |
| One click to publish | Changes go through a "pull request" for review |
| Google handles everything | We use a free assistant (opencode or openchamber) to run commands |

The good news: the AI assistant does almost all of the command-line work. You mostly type what you want in plain English.

---

## Two ways to contribute

### Path 1: Use opencode or openchamber (recommended for beginners)

This is the easiest way. The AI assistant runs the local preview, compiles styles, creates branches, and opens pull requests for you.

Tools you need:

- **A computer** (Windows, Mac, or Linux)
- **Git** — to copy the website to your machine. [Download here](https://git-scm.com/).
- **opencode** or **openchamber** — the AI assistant. [opencode.ai](https://opencode.ai/) | [openchamber on GitHub](https://github.com/openchamber/openchamber)
- **A GitHub account** — the same kind you use to log into any open-source project. [github.com](https://github.com)

You do **not** need to install Node, npm, Python, or any of the complicated web developer tools. The assistant handles those.

### Path 2: Edit directly on GitHub (for tiny text fixes only)

If you only want to fix a typo or change a sentence, you can edit a file directly on GitHub's website. This skips most steps but is only good for small text changes — not new events, images, or design updates.

---

## Path 1: Your first edit with an AI assistant

Follow these steps exactly. It gets easier each time.

### 1. Install the tools

1. Install **Git** from [git-scm.com](https://git-scm.com).
2. Install **opencode** from [opencode.ai](https://opencode.ai/) or **openchamber** from [GitHub](https://github.com/openchamber/openchamber).
3. Create or sign in to your **GitHub** account.

### 2. Ask the assistant to set up the project

Open opencode/openchamber and type exactly this:

> "I want to edit the GSCRL website. Please clone https://github.com/GSCRL/website.git to my computer, switch to the main branch, and make sure everything is up to date."

The assistant will run commands like `git clone`, `git checkout main`, and `git pull origin main`. You do not need to memorize these.

### 3. Make your first change

Always create a new branch before editing. You can say:

> "Create a new branch called update/my-first-change."

Then tell the assistant what you want to change. For example:

> "On the home page, change theevent date for June Jumble from June 5th to June 6th."

### 4. Preview the change

Before anything goes live, you should look at it locally. Say:

> "Please preview the website locally so I can see the change."

The assistant will compile the styles, start a local server, and tell you to open a link like `http://localhost:8000` in your web browser.

### 5. Commit and open a pull request

When the change looks right, say:

> "Commit my changes with a clear message and push the branch to GitHub. Then open a pull request against main."

The assistant will handle the rest.

### 6. Ask a reviewer to look at it

Tell someone else on the team that your pull request is ready. They will pull your branch to their own computer, preview it, and click **Merge** on GitHub if it looks good.

After merging, the live website updates automatically in a minute or two.

---

## What is actually happening?

Here are the buzzwords explained in plain language.

- **Repository (repo):** The folder that holds all the website files. It lives on GitHub.
- **Clone:** Copying the repo from GitHub to your computer.
- **Branch:** A personal copy of the website where you can make changes without affecting the live site.
- **main:** The official version of the website. Live changes come from here.
- **Commit:** Saving a snapshot of your changes with a short message.
- **Pull request (PR):** Asking the team to review your changes and add them to `main`.
- **Preview / local server:** Looking at the website on your own computer before it goes live.
- **Merge:** Combining your branch into `main` so the changes go live.

---

## Copy-paste prompts for common tasks

You can copy and paste these directly into opencode or openchamber. Replace the text in brackets with your own information.

### Add a new event

> "Add a new event to the home page. The event is called [Event Name], happening on [Date] at [Location]. Link to the registration page: [URL]. Link to brackets: [URL]. Use the image at images/event_sites/coming_soon.jpg if we don't have a custom photo yet."

### Add a sponsor

> "Add a new sponsor to the home page. The sponsor name is [Name], their website is [URL], and their logo is at images/sponsors/[filename]. Make sure the logo has good alt text."

### Update some text

> "On [page name], change the text '[old text]' to '[new text]'."

### Replace an image

> "Replace the image [old image path] with [new image path] on [page name]. Make sure the new image has good alt text."

### Fix a typo

> "Fix the typo '[typo]' on [page name]. Change it to '[correct text]'."

---

## Path 2: Edit directly on GitHub

Use this only for small text changes.

1. Go to [https://github.com/GSCRL/website](https://github.com/GSCRL/website).
2. Find the file you want to change (probably `index.html`).
3. Click the pencil icon in the top right of the file.
4. Make your edit.
5. Scroll down, add a commit message, and choose **Create a new branch for this commit and start a pull request**.
6. Click **Propose changes**.

This creates a pull request automatically. Someone still needs to review and merge it.

---

## What "review" means

A reviewer is just another person who checks your work before it goes live. They will:

1. Look at the pull request on GitHub.
2. Pull your branch to their own computer.
3. Run the local preview in their browser.
4. Either say "Looks good" or ask for changes.

If they ask for changes, tell the assistant:

> "The reviewer wants [describe change]. Please update the branch."

Then the reviewer previews again.

---

## Do I need to learn code?

Not really. You do not need to write code. You need to:

- Describe what you want clearly
- Check that the preview looks right
- Ask the AI to fix anything that is wrong

Over time, you may start to recognize small pieces of HTML, but you can contribute without that.

---

## Troubleshooting

### The assistant says "sass not found"

Tell the assistant:

> "Please install the Dart Sass standalone binary and continue."

It is a single small program that the AI can install for you.

### I do not see my changes in the browser

Tell the assistant:

> "Refresh the local preview. The changes are not showing up."

It may need to recompile the SCSS or clear the browser cache.

### I am not comfortable with branches

That is normal. The assistant can create branches, commit, and open pull requests for you. Just ask:

> "Please handle the git workflow for me. I just want to describe changes and review the preview."

---

## Where to go next

- For the full setup guide (including command-line options), see [`README.md`](../README.md).
- For the detailed rules the AI follows, see [`AGENTS.md`](../AGENTS.md).
- For a list of improvements we want to make, see the [GitHub Issues](https://github.com/GSCRL/website/issues) page.
