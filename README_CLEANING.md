---
title: "README_CLEANING"
output: html_document
---

# Repository Cleaning Log

## Purpose

This document describes the process performed to permanently remove sensitive files and folders from the Git history of this repository in order to prepare it for public release while ensuring privacy, confidentiality, and repository cleanliness.

---

## Cleaning Actions Performed

### **Removed Entire Folders From Git History:**
- `Docs/`
- `Output/`
- `Deprecated/`

These folders contained personal documents, temporary files, and sensitive or irrelevant outputs that were not appropriate for public sharing.

---

###  **Removed Specific Files From Git History:**
- `Thesis.docx`
- `~$Thesis.docx`

These files were located in the root of the repository and have been permanently removed.

---

## **Tool Used**

- [`git filter-repo`](https://github.com/newren/git-filter-repo)  
✔️ This is the official and recommended tool to rewrite Git history safely and efficiently.

---

## **Command Executed**

```bash
git filter-repo --force \
  --path Docs/ --invert-paths \
  --path Output/ --invert-paths \
  --path Deprecated/ --invert-paths \
  --path Thesis.docx --invert-paths \
  --path "~$Thesis.docx" --invert-paths