# Natas Level 0 -> 1

## Provided Information

Username: natas1
URL: http://natas1.natas.labs.overthewire.org

## Solutions

### Solution 1: Using the browser

Navigate to http://natas1.natas.labs.overthewire.org in the browser. You are presented with a bare page containing a couple of items. One is an element with the message "You can find the password for the next level on this page". The other element is an image button that redirects you to another hacking challenge website.

Open dev tools with `Ctrl + Shift + I`. Go to the Inspector tab to view the HTML. Expand the elements to find the password for natas1.

### Solution 2: Using curl

Open a terminal and use curl with the user, password, and URL.

```
curl -u natas0:natas0 http://natas1.natas.labs.overthewire.org
```

This will return and display the HTML content of the website which includes the password for natas1.

## Lessons Learned

- Never leave sensitive content in the HTML.
- Remove logs and comments from production code using minifier tools like Babel Minify or Terser.
- If sensitive information was ever committed to git, it will need to be removed using tools like `git-filter-repo`.
