# Vector Databases Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for the AI engineering concept **Vector Databases**.

Use HTML/CSS as the source of truth and render the final PNG from the `.card` element. Do not use remote images, remote fonts, stock artwork, or generated raster text.

## Visible Card Copy

Header:

- `VECTOR DATABASES`
- `Tooling Map`

Overview:

`Vector databases store embeddings with metadata, indexes, and query controls so applications can retrieve semantically similar records at production speed. In RAG systems, they are the retrieval layer between raw knowledge and model context.`

How It Works:

- `Documents`
- `Embeddings`
- `Vector index`
- `Metadata filters`
- `Similarity query`
- `Ranked results`

Engineering Notes:

- `Store vectors with source IDs, permissions, timestamps, and chunk metadata.`
- `Choose indexing, filtering, updates, and delete behavior for your workload.`
- `Measure retrieval quality, not only query latency.`

Practical Stack:

- `Postgres + pgvector for app-owned data and simpler ops.`
- `Qdrant, Weaviate, Milvus, or Pinecone for dedicated vector workloads.`
- `FAISS for local indexes, experiments, and custom retrieval services.`

## Design Direction

Use the default five-section layout: header, overview, how it works, engineering notes, practical stack.

Make the central flow diagram the visual anchor. Show documents becoming embeddings, embeddings entering a vector index, metadata filters constraining retrieval, and similarity queries returning ranked chunks. Use a light editorial canvas, white content panels, thin cool-gray borders, restrained shadows, and a Tooling Map palette based on indigo/violet with electric blue section labels and teal/amber functional accents.

Keep text readable at mobile feed size. Avoid dense paragraphs, heavy gradients, dark backgrounds, decorative blobs, bokeh, circuit patterns, and marketing language.
