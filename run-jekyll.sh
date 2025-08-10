#!/bin/bash

echo "Jekyll Site Runner"
echo "=================="

# Check if Docker is available
if command -v docker &> /dev/null; then
    echo "Docker found! Using Docker to run Jekyll..."
    echo ""
    echo "Starting Jekyll server..."
    echo "Your site will be available at: http://localhost:4000"
    echo "Press Ctrl+C to stop the server"
    echo ""
    
    docker run --rm -it \
        -p 4000:4000 \
        -v "$(pwd):/site" \
        jekyll/jekyll:4 \
        jekyll serve --watch --force_polling --host 0.0.0.0
    
elif command -v jekyll &> /dev/null; then
    echo "Jekyll found! Running locally..."
    echo ""
    echo "Starting Jekyll server..."
    echo "Your site will be available at: http://localhost:4000"
    echo "Press Ctrl+C to stop the server"
    echo ""
    
    jekyll serve --watch
    
else
    echo "Neither Docker nor Jekyll found."
    echo ""
    echo "To run this site, you have a few options:"
    echo ""
    echo "1. Install Docker and run: ./run-jekyll.sh"
    echo "2. Install Ruby and Jekyll:"
    echo "   - Install Ruby (2.4.0+)"
    echo "   - Run: gem install jekyll bundler"
    echo "   - Run: bundle install"
    echo "   - Run: bundle exec jekyll serve"
    echo ""
    echo "3. Deploy to GitHub Pages:"
    echo "   - Push this code to a GitHub repository"
    echo "   - Enable GitHub Pages in repository settings"
    echo ""
    echo "4. Use Netlify or Vercel for hosting"
    echo ""
    echo "For more information, see the README.md file."
fi