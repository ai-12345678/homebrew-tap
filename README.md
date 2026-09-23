# homebrew-tap

Homebrew formulas in this tap. FFmpeg and Go 1.26.7/1.27.0 require macOS on Apple Silicon; Go 1.27.1 targets Linux ARM64; Postman CLI supports macOS on Apple Silicon and Intel. The versioned FFmpeg and Go formulas are keg-only, so use their installation paths to check the installed versions.

## FFmpeg 5.0

```bash
brew trust --formula ai-12345678/tap/ffmpeg@5.0
brew install ai-12345678/tap/ffmpeg@5.0
"$(brew --prefix ai-12345678/tap/ffmpeg@5.0)/bin/ffmpeg" -version
```

## Go 1.26.7

```bash
brew trust --formula ai-12345678/tap/go@1.26.7
brew install ai-12345678/tap/go@1.26.7
"$(brew --prefix ai-12345678/tap/go@1.26.7)/bin/go" version
```

## Go 1.27.0

```bash
brew trust --formula ai-12345678/tap/go@1.27.0
brew install ai-12345678/tap/go@1.27.0
"$(brew --prefix ai-12345678/tap/go@1.27.0)/bin/go" version
```

## Go 1.27.1 (Linux ARM64)

```bash
brew update
brew trust --formula ai-12345678/tap/go@1.27.1
brew install ai-12345678/tap/go@1.27.1
"$(brew --prefix ai-12345678/tap/go@1.27.1)/bin/go" version
brew link --overwrite --force ai-12345678/tap/go@1.27.1
```

## Postman CLI 1.59.0

```bash
brew trust --formula ai-12345678/tap/postman-cli
brew install ai-12345678/tap/postman-cli
postman --version
```
