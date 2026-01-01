# My Learning Journal

A collection of learning notes documented as Jupyter notebooks and automatically published to GitHub Pages.

🌐 **Live Site**: https://int-smart.github.io/notes/

## 🚀 Quick Start

**Option 1 - Automated** (after cron setup):
1. Add/edit notebooks in `notebooks/` directory
2. Wait for midnight - auto-added to toc and deployed

**Option 2 - Manual** (immediate):
1. Add notebook to `notebooks/` directory
2. Update `myst.yml` to include it:
   ```yaml
   toc:
     - file: notebooks/your_notebook
   ```
3. Commit and push - site auto-deploys

## 📝 Local Preview

```bash
npm install -g mystmd
myst build --html
# Open _build/html/index.html
```

## ⏰ Auto-Commit Setup

Automatically commit notebook changes daily at midnight:

```bash
cd scheduler
./setup_cron.sh
```

This installs a cron job that:
- Auto-detects new notebooks in `notebooks/`
- Auto-adds them to `myst.yml` toc
- Commits and pushes changes at 00:00
- Triggers automatic deployment

**Manual run**: `./scheduler/auto_commit.sh`  
**View logs**: `cat scheduler/auto_commit.log`

## ⚙️ Configuration

- **myst.yml** - Site config and table of contents
- **intro.md** - Homepage content
- **.github/workflows/deploy.yml** - Auto-deployment

