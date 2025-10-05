# blog
my blog because i am fed up of ghost

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

### Image Wrapping Behavior

- Images in blog posts are automatically wrapped with styling (`blog-image-wrapper` and `blog-image-inner`)
- Images in `figure` elements (from the thumb shortcode) are NOT wrapped
- Images in `.index-card` elements are NOT wrapped
- The profile image (`alt="me"`) is NOT wrapped

## Image Compression

To compress images to a reasonable size for web, run:

```bash
./compress-images.sh
```

This script will:
- Resize images wider than 1200px
- Compress images to 85% quality
- Strip metadata
- Skip already optimized images
- Show before/after file sizes
- Create backups and only keep compression if it saves space

**Requirements:** ImageMagick (`sudo dnf install ImageMagick`)
