# Quick Start Guide

## 📝 Adding a New Learning Entry

1. **Copy the template**:
   ```bash
   cp notebooks/template.ipynb notebooks/your_topic_name.ipynb
   ```

2. **Edit your new notebook** with your learning notes

3. **Add it to the table of contents** (`_toc.yml`):
   ```yaml
   chapters:
     - file: notebooks/example_notebook
     - file: notebooks/your_topic_name  # Add this line
   ```

4. **Commit and push**:
   ```bash
   git add .
   git commit -m "Add notes on [your topic]"
   git push
   ```

5. **Wait 2-3 minutes** for GitHub Actions to build and deploy
   - Check progress at: `https://github.com/YOUR_USERNAME/notes/actions`

## 🎨 Organizing Your Notebooks

You can organize notebooks into sections in `_toc.yml`:

```yaml
format: jb-book
root: intro
chapters:
  - file: notebooks/example_notebook
  
  - caption: Python Learning
    chapters:
      - file: notebooks/python_basics
      - file: notebooks/python_advanced
  
  - caption: Machine Learning
    chapters:
      - file: notebooks/ml_intro
      - file: notebooks/ml_models
```

## 🔧 Local Preview

Build and preview your site locally before pushing:

```bash
# Activate virtual environment (if created)
source venv/bin/activate

# Build the book
jupyter-book build .

# Open in browser
xdg-open _build/html/index.html  # Linux
# or
open _build/html/index.html      # macOS
```

## 📦 Adding Python Packages

If your notebooks need additional packages:

1. Add them to `requirements.txt`
2. Install locally: `pip install -r requirements.txt`
3. Commit and push - GitHub Actions will install them automatically

## 🎯 Workflow

```
Write Notes → Save Notebook → Update _toc.yml → Git Push → Auto-Deploy ✨
```

That's it! No manual building or deployment needed.

## 💡 Tips

- **Auto-save**: Jupyter will auto-save your notebooks as you work
- **Execution**: Code cells will be executed during the build (configurable in `_config.yml`)
- **Math**: Use LaTeX syntax for math equations: `$E = mc^2$`
- **Images**: Store images in a `images/` folder and reference them in markdown
- **Dark mode**: The theme supports dark mode automatically!

## 🐛 Troubleshooting

**Build failing?**
- Check the Actions tab on GitHub for error messages
- Common issues: missing packages in `requirements.txt`, syntax errors in notebooks

**Site not updating?**
- Check that GitHub Pages is enabled (Settings → Pages → Source: GitHub Actions)
- Wait a few minutes - builds can take 2-5 minutes

**Want to customize the theme?**
- Edit `_config.yml` - see [Jupyter Book docs](https://jupyterbook.org/customize/config.html)

