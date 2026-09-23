class GoAT1271 < Formula
  desc "Open source programming language to build simple/reliable/efficient software"
  homepage "https://go.dev/"
  url "https://go.dev/dl/go1.27.1.linux-arm64.tar.gz"
  version "1.27.1"
  sha256 "3450b45a3f9ee8568792736a5c5e70a1f2e9b36c35a8f74958c03e51d7d92bec"

  depends_on :linux
  depends_on arch: :arm64

  keg_only :versioned_formula

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/go"
    bin.install_symlink libexec/"bin/gofmt"
  end

  test do
    assert_match "go1.27.1", shell_output("#{bin}/go version")
  end
end
