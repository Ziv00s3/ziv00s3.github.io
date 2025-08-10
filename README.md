# My Jekyll Site

This is a Jekyll site that you can use as a starting point for your own website or blog.

## What is Jekyll?

Jekyll is a simple, blog-aware, static site generator. It takes text written in your favorite markup language and uses layouts to create a static website. You can tweak the site's look and feel, URLs, the data displayed on the page, and more.

## Getting Started

### Prerequisites

To use Jekyll locally, you'll need:
- Ruby (version 2.4.0 or higher)
- RubyGems
- GCC and Make

### Installation

1. Install Jekyll and Bundler gems:
   ```bash
   gem install jekyll bundler
   ```

2. Install the dependencies:
   ```bash
   bundle install
   ```

3. Build the site and start a local server:
   ```bash
   bundle exec jekyll serve
   ```

4. Open your browser and navigate to `http://localhost:4000`

### Alternative: Using Docker

If you have Docker installed, you can run Jekyll without installing Ruby:

```bash
docker run --rm -it -p 4000:4000 -v $(pwd):/site jekyll/jekyll:4 jekyll serve --watch --force_polling
```

## Site Structure

```
.
├── _config.yml          # Main configuration file
├── _posts/              # Blog posts
├── _layouts/            # Layout templates
├── _includes/           # Reusable components
├── _sass/               # Sass stylesheets
├── assets/              # CSS, JS, images, etc.
├── Gemfile              # Ruby dependencies
└── README.md            # This file
```

## Customization

### Configuration

Edit `_config.yml` to change:
- Site title and description
- Author information
- Theme settings
- Plugin configuration

### Adding Posts

Create new markdown files in the `_posts` directory with the format:
`YYYY-MM-DD-title.md`

### Styling

The site uses the Minima theme by default. You can customize it by:
- Overriding theme files in your site
- Adding custom CSS in `assets/css/`
- Modifying the theme's Sass files

## Deployment

### GitHub Pages

1. Push your code to a GitHub repository
2. Go to Settings > Pages
3. Select the source branch (usually `main` or `master`)
4. Your site will be available at `https://username.github.io/repository-name`

### Netlify

1. Connect your GitHub repository to Netlify
2. Set build command: `jekyll build`
3. Set publish directory: `_site`
4. Deploy automatically on every push

### Other Hosting

Since Jekyll generates static files, you can host your site anywhere:
- Amazon S3
- Vercel
- Any web server

## Support

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Jekyll GitHub Repository](https://github.com/jekyll/jekyll)
- [Jekyll Talk](https://talk.jekyllrb.com/)

## License

This project is open source and available under the [MIT License](LICENSE).