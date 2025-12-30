# My Learning Journal

A collection of my learning notes and explorations, documented as Jupyter notebooks and automatically published to GitHub Pages.

## 📚 View the Journal

Visit the published site at: `https://YOUR_USERNAME.github.io/notes/`

## 🚀 How It Works

This repository uses [Jupyter Book](https://jupyterbook.org/) to automatically convert Jupyter notebooks into a beautiful website.

### Adding New Notebooks

1. Add your `.ipynb` notebook file to the `notebooks/` directory
2. Update `_toc.yml` to include your new notebook:
   ```yaml
   chapters:
     - file: notebooks/your_new_notebook
   ```
3. Commit and push to GitHub
4. GitHub Actions will automatically build and deploy your updated site!

## 📝 Local Development

To build and preview locally:

```bash
# Install dependencies
pip install -r requirements.txt

# Build the book
jupyter-book build .

# Open _build/html/index.html in your browser
```

## ⚙️ Setup Instructions

### First Time Setup

1. **Create a new repository** on GitHub named `notes`

2. **Initialize this directory as a git repository**:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/notes.git
   git push -u origin main
   ```

3. **Enable GitHub Pages**:
   - Go to your repository on GitHub
   - Click on "Settings" → "Pages"
   - Under "Source", select "GitHub Actions"

4. **Update configuration**:
   - Edit `_config.yml` and update the repository URL with your GitHub username

That's it! Every time you push new notebooks, your site will automatically update.

## 🎨 Customization

- Edit `_config.yml` to change site title, author, and theme settings
- Edit `intro.md` to customize your homepage
- Modify `_toc.yml` to organize your notebooks

## 📦 Adding Dependencies

If your notebooks use additional Python packages, add them to `requirements.txt` so they're installed during the build process.

---

Happy learning and documenting! 📖✨

