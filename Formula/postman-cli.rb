class PostmanCli < Formula
  desc "Command-line companion for Postman"
  homepage "https://www.postman.com/product/postman-cli/"
  version "1.59.0"
  license :cannot_represent

  depends_on :macos

  on_macos do
    on_arm do
      url "https://dl-cli.pstmn.io/download/version/1.59.0/osx_arm64"
      sha256 "a6763393c4947b2eecbbadcf02e520787a79ee1fe8d67f0d94ba69d2652c1b51"
    end

    on_intel do
      url "https://dl-cli.pstmn.io/download/version/1.59.0/osx_64"
      sha256 "9d0d6f736c101aa184baa87d683cd803a7595bc36a06755f97481728e6153ed6"
    end
  end

  def install
    libexec.install "postman-cli" => "postman"
    libexec.install "lib"
    bin.write_exec_script libexec/"postman"
    man1.install "postman.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/postman --version")
  end
end
