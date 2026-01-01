# Quick Start Guide

## 📝 Adding a New Notebook

### With Auto-Commit (Recommended)
1. **Create notebook**:
   ```bash
   cp notebooks/template.ipynb notebooks/your_topic.ipynb
   ```
2. **Edit** your notebook
3. **Wait for midnight** - auto-added to `myst.yml` and deployed

### Manual (Immediate)
1. **Create notebook**: `cp notebooks/template.ipynb notebooks/your_topic.ipynb`
2. **Edit** your notebook
3. **Add to `myst.yml`**:
   ```yaml
   toc:
     - file: notebooks/your_topic
   ```
4. **Push**:
   ```bash
   git add .
   git commit -m "Add notes on your topic"
   git push
   ```

## ⏰ Auto-Commit (Daily at Midnight)

One-time setup:
```bash
cd scheduler
./setup_cron.sh
```

This automatically:
- Scans `notebooks/` for new `.ipynb` files
- Adds them to `myst.yml` toc
- Commits and pushes at 00:00
- Triggers deployment

**Manual run**: `./scheduler/auto_commit.sh`  
**View logs**: `cat scheduler/auto_commit.log`  
**Remove**: `crontab -e` and delete the auto_commit line

## 🔧 Local Preview

```bash
npm install -g mystmd
myst build --html
xdg-open _build/html/index.html
```

## 🎯 Workflow

**Automated** (after cron setup):
```
Write Notebooks → Save → Wait (midnight) → Auto-add to TOC → Auto-Deploy ✨
```

**Manual** (immediate):
```
Write Notebooks → Update myst.yml → Git Push → Auto-Deploy ✨
```

