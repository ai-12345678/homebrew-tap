class GoAT1271 < Formula
  desc "Go programming language"
  homepage "https://go.dev/"
  version "1.27.1"

  on_macos do
    on_arm do
      url "https://go.dev/dl/go1.27.1.darwin-arm64.tar.gz"
      sha256 "ee215d57e0ec269c60cc9ceca68e6bda321ba9ee5afe24f4b0988703c2d87d12"
    end

    on_intel do
      url "https://go.dev/dl/go1.27.1.darwin-amd64.tar.gz"
      sha256 "8f8f52c6649542cf027bbc9b9c68d1ec042f9f34808a40413f0b8b3f66f3caa4"
    end
  end

  on_linux do
    url "https://go.dev/dl/go1.27.1.linux-arm64.tar.gz"
    sha256 "3450b45a3f9ee8568792736a5c5e70a1f2e9b36c35a8f74958c03e51d7d92bec"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/go"
    bin.install_symlink libexec/"bin/gofmt"
  end
end
