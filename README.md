# blog
my blog because i am fed up of ghost

## Setup

### Prerequisites

- [Hugo](https://gohugo.io/installation/) (extended version)
- [Python](https://www.python.org/downloads/) 3.14 or later
- [uv](https://docs.astral.sh/uv/getting-started/installation/) (Python package manager)
- ImageMagick (`sudo dnf install ImageMagick` on Fedora)

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd blog
   ```

2. Install Python dependencies:
   ```bash
   uv sync
   ```

3. Install pre-commit hooks:
   ```bash
   uv run pre-commit install
   ```

   This will set up automatic hooks that run on each commit:
   - File checks (trailing whitespace, YAML/TOML validation)
   - Image compression (via `compress-images.sh`)
   - Python linting and formatting (Ruff)

### Running the Development Server

```bash
./serve.sh
```

The site will be available at `http://localhost:8000/`

This script builds the site with Hugo and serves it using Python's web server, which works more reliably than Hugo's built-in server.

## Adding Images to Posts

### Image Storage Structure

Store images following the blog's folder structure:
```
static/images/blog/YYYY/MM/image-name.jpg
```

For example, for a post in `content/blog/2025/10/on-heroes.md`, store images in:
```
static/images/blog/2025/10/
```

### Using the Thumb Shortcode

The `thumb` shortcode supports three positions:

#### Full Width Image
```
{{< thumb "/images/blog/2025/10/image.jpg" "full" "Image caption here." >}}
```

#### Right-Aligned Thumbnail
```
{{< thumb "/images/blog/2025/10/image.jpg" "right" "Image caption here." "300" >}}
```

#### Left-Aligned Thumbnail
```
{{< thumb "/images/blog/2025/10/image.jpg" "left" "Image caption here." "300" >}}
```

### Caption Formatting

Captions support markdown. Use this format for proper attribution:

```
{{< thumb "/images/blog/2025/10/protest.jpg" "full" "Protestors at Parliament Square, London, 12 February 2022. (Credit: [Photographer Name](https://link-to-source), CC BY-SA 4.0.)" >}}
```

### Image Wrapping Behaviour

- Images in blog posts are automatically wrapped with styling (`blog-image-wrapper` and `blog-image-inner`)
- Images in `figure` elements (from the thumb shortcode) are NOT wrapped
- Images in `.index-card` elements are NOT wrapped
- The profile image (`alt="me"`) is NOT wrapped

## Writing Poems

Use the `poem` shortcode to format poetry properly:

```
{{< poem >}}
Your poem text here
Line breaks are preserved
Each stanza separated by blank lines
{{< /poem >}}
```

The poem shortcode:
- Centres the poem with max width of 600px
- Italicises the text
- Indents lines by 2em
- Disables dropcaps
- Preserves line breaks

## Image Compression

To compress images to a reasonable size for web, run:

```bash
./compress-images.sh
```

This script will:
- Resize images wider than 1200px
- Compress images to 85% quality
- Strip metadata
- Skip already optimised images
- Show before/after file sizes
- Create backups and only keep compression if it saves space

**Requirements:** ImageMagick (`sudo dnf install ImageMagick`)
