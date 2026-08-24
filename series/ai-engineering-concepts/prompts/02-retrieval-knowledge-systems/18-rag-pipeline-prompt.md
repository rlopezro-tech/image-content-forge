# RAG Pipeline Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for the AI engineering concept **RAG Pipeline**.

Use HTML/CSS as the source of truth and render the final PNG from the `.card` element. Do not use remote images, remote fonts, stock artwork, or generated raster text.

## Layout Choice

Use the alternative bottom format from the series rules:

- Header
- Overview
- How It Works
- System Map

Do not include Engineering Notes or Practical Stack. RAG Pipeline is better explained with a larger lifecycle diagram.

## Visible Card Copy

Header:

- `RAG PIPELINE`
- `Implementation`

Overview:

`A RAG pipeline connects private or changing knowledge to an LLM by preparing documents, indexing searchable chunks, retrieving relevant evidence, and generating answers grounded in that evidence. The quality of the answer depends on the whole pipeline, not only the model.`

How It Works:

- `Ingest docs`
- `Chunk + embed`
- `Index`
- `Retrieve`
- `Rerank`
- `Generate + cite`

System Map:

- `Source documents`
- `Chunking`
- `Embeddings`
- `Vector index`
- `User query`
- `Retriever`
- `Reranker`
- `Context builder`
- `LLM answer`
- `Citations`

Map labels:

- `Offline indexing path`
- `Online answer path`
- `Quality checks: freshness, permissions, recall, grounding`

## Design Direction

Make the System Map the largest and most informative section. Show two connected lanes:

- An offline indexing lane: source documents -> chunking -> embeddings -> vector index.
- An online answer lane: user query -> retriever -> reranker -> context builder -> LLM answer -> citations.

Use a light editorial canvas, white content panels, thin cool-gray borders, restrained shadows, and an implementation palette based on teal/green with electric blue for section labels and amber for quality checks. Keep text readable at mobile feed size. Avoid dense paragraphs, heavy gradients, dark backgrounds, decorative blobs, bokeh, circuit patterns, and marketing language.
