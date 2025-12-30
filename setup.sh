#!/bin/bash

# Setup script for Learning Journal

echo "🚀 Setting up your Learning Journal..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit: Setup Learning Journal"
    git branch -M main
    
    echo ""
    echo "✅ Git repository initialized!"
    echo ""
    echo "📝 Next steps:"
    echo "1. Create a repository on GitHub named 'notes'"
    echo "2. Run these commands (replace YOUR_USERNAME):"
    echo ""
    echo "   git remote add origin https://github.com/YOUR_USERNAME/notes.git"
    echo "   git push -u origin main"
    echo ""
    echo "3. Enable GitHub Pages in repository Settings → Pages → Source: GitHub Actions"
    echo "4. Update _config.yml with your GitHub username"
else
    echo "✅ Git repository already initialized"
fi

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo ""
    read -p "📦 Would you like to create a Python virtual environment? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        python3 -m venv venv
        source venv/bin/activate
        pip install --upgrade pip
        pip install -r requirements.txt
        echo "✅ Virtual environment created and dependencies installed!"
        echo "   Run 'source venv/bin/activate' to activate it"
    fi
fi

echo ""
echo "✨ Setup complete! Your learning journal is ready."
echo ""
echo "📚 To add a new notebook:"
echo "   1. Create a .ipynb file in the notebooks/ directory"
echo "   2. Add it to _toc.yml"
echo "   3. Commit and push to GitHub"
echo ""
echo "🔍 To preview locally:"
echo "   jupyter-book build ."
echo "   Then open _build/html/index.html"

