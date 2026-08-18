class FfmpegAT50 < Formula
  desc "Static FFmpeg 5.0 binary for macOS Apple Silicon"
  homepage "https://ffmpeg.martin-riedl.de/"
  url "https://ffmpeg.martin-riedl.de/download/macos/arm64/1642276193_5.0/ffmpeg.zip"
  version "5.0"
  license "GPL-3.0-or-later"

  depends_on :macos
  depends_on arch: :arm64

  keg_only :versioned_formula

  def install
    bin.install "ffmpeg"
  end

  test do
    assert_match "ffmpeg version 5.0", shell_output("#{bin}/ffmpeg -version")
  end
end
