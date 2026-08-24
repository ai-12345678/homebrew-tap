class GoAT1270 < Formula
  desc "Open source programming language to build simple/reliable/efficient software"
  homepage "https://go.dev/"
  url "https://go.dev/dl/go1.27.0.darwin-arm64.tar.gz"
  version "1.27.0"

  depends_on :macos
  depends_on arch: :arm64

  keg_only :versioned_formula

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/go"
    bin.install_symlink libexec/"bin/gofmt"
  end

  test do
    assert_match "go1.27.0", shell_output("#{bin}/go version")
  end
end
