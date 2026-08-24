class GoAT1267 < Formula
  desc "Open source programming language to build simple/reliable/efficient software"
  homepage "https://go.dev/"
  url "https://go.dev/dl/go1.26.7.darwin-arm64.tar.gz"
  version "1.26.7"
  sha256 "020a1e8224811be75163e920bc77e0926a1390a6aeea19bdcf23f74b9d749f6d"

  depends_on :macos
  depends_on arch: :arm64

  keg_only :versioned_formula

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/go"
    bin.install_symlink libexec/"bin/gofmt"
  end

  test do
    assert_match "go1.26.7", shell_output("#{bin}/go version")
  end
end
