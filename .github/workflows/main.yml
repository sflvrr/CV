name: Generate CV PDF

on:
  push:
    branches:
      - master
      - main
  pull_request:

jobs:
  latex-build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Determine Environment
        id: env_selector
        run: |
          SELECTED_OS=$(python3 choose_system.py)
          echo "BASE_IMAGE=$SELECTED_OS" >> $GITHUB_ENV

      - name: Build Docker Image
        run: |
          docker build \
            --build-arg BASE_OS=${{ env.BASE_IMAGE }} \
            -t cv-compiler \
            -f builder/Dockerfile .

      - name: Compile Document
        run: docker run --name latex-container cv-compiler

      - name: Copy PDF from container
        run: docker cp latex-container:/workspace/src/CV.pdf ./CV.pdf

      - name: Upload PDF Artifact
        uses: actions/upload-artifact@v4
        with:
          name: CV
          path: CV.pdf