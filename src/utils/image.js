/**
 * Optimizes Google User Content URLs by appending size and quality parameters.
 * If it's not a Google User Content URL, returns the original URL.
 * 
 * @param {string} url - The original image URL
 * @param {number} width - The target width (e.g. 600, 800, 1200)
 * @returns {string} - The optimized URL
 */
export function optimizeImage(url, width = 800) {
  if (!url) return '';
  
  // Only process remote Google Photos / Google User Content URLs
  if (url.includes('lh3.googleusercontent.com') || url.includes('googleusercontent.com')) {
    // Remove any existing sizing/format parameters (e.g., =s300, =w400, etc.)
    const cleanUrl = url.split('=')[0];
    // Append the new width and request WebP format (-rw)
    return `${cleanUrl}=w${width}-rw`;
  }
  
  return url;
}
