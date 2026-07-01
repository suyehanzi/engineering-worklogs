# 2026-07-01 Document Automation and Resume Delivery

## Source

Sanitized real-record excerpt from a private daily worklog.

## Goal

Use script-assisted document processing to complete spreadsheet forms, then build a bilingual resume in Markdown and PDF with visual verification.

## Context

This work combined structured data handling and document delivery. The spreadsheet side required mapping old values, new values, and failure records while preserving workbook formatting. The resume side required keeping Markdown as the editable source, generating PDF output, and visually checking the final result instead of relying only on file creation.

The delivery requirement also included printed-use concerns. Visible links mattered because a printed PDF might not preserve clickable annotations for the reader.

## Timeline

- `Morning` Read source spreadsheets and built mappings across old values, new values, and failure records.
- `Morning` Converted an older spreadsheet format into a modern workbook before batch processing.
- `Midday` Filled a confirmation workbook and a change request workbook while preserving existing styles.
- `Afternoon` Built bilingual resume source files in Markdown and exported PDF files for delivery.
- `Review` Re-rendered PDF pages and checked that both language versions stayed on one page.

## What Changed

- Created a script-assisted mapping workflow for spreadsheet records.
- Preserved workbook formatting while filling missing rows.
- Maintained Markdown as the editable resume source.
- Generated Chinese and English PDF resumes.
- Added GitHub links and public worklog evidence to the resume.

## Detailed Work Notes

- Read source spreadsheets and built a mapping table before writing output.
- Converted the older workbook format to reduce batch-processing instability.
- Filled confirmation and change-request workbooks while preserving visible styles.
- Expanded template rows when the real record count exceeded the initial visible structure.
- Kept Markdown as the source of truth for resume wording.
- Generated separate Chinese and English PDF files.
- Added visible GitHub URLs so the resume still works after printing.
- Rendered PDF pages into images and checked layout, photo placement, line wrapping, Chinese text, and link visibility.
- Combined final language versions only after each individual PDF was visually checked.

## Evidence

- The confirmation workbook was filled in the original visible order.
- The change request workbook received all required detail rows after template expansion.
- Spreadsheet processing finished without formula errors.
- PDF rendering showed no clipping, overlap, missing Chinese fonts, or unexpected second page.
- Links were checked for both visible text and clickable PDF annotations.

## Problems

- Older spreadsheet formats can be unstable for batch processing until converted.
- Template row counts may not match real record counts.
- Resume content needs evidence, but private worklog archives should not be linked directly.
- A printed resume needs visible URLs because clickable links may not survive printing.

## Decisions

- Keep Markdown as the editable source and PDF as the delivery artifact.
- Verify the rendered PDF visually because text extraction alone cannot catch layout defects.
- Use a public sanitized record repository as resume evidence instead of private archive material.
- Keep URLs visible in the document text.
- Preserve workbook formatting instead of creating a new visual layout from scratch.

## Document Delivery Checklist

- Source spreadsheet reviewed.
- Mapping generated.
- Workbook format converted when needed.
- Output rows filled.
- Formula checks completed.
- Markdown source updated.
- PDF generated.
- Rendered page preview inspected.
- Visible links checked.
- Final bilingual file assembled.

## Next Actions

- Keep Markdown as the source of truth for resume updates.
- Keep PDF as the primary delivery format.
- Use public, sanitized GitHub records instead of a private daily archive.
- Keep URLs visible enough for printed copies.

## Reviewer Notes

This record is useful for judging structured data processing, document automation, and delivery quality. It shows an end-to-end workflow: read data, transform it safely, preserve formatting, generate documents, render the result, and check the final artifact visually.

## Private Details Removed

- [x] No credentials, keys, cookies, or session values
- [x] No full internal links, server details, or private file paths
- [x] No customer names, payment details, or private account details
- [x] No screenshots or exported private files
