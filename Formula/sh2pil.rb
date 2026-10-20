class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.5/sh2pil_0.6.5_darwin_arm64.tar.gz"
      sha256 "dc56dcc468cdbf62b7a0e5b9e5e4dec451d0ebb7eec6ae7b2e61214cd10859aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.5/sh2pil_0.6.5_linux_amd64.tar.gz"
      sha256 "f15d07a8fdb925190b97fccd10a115751d2c4f4f647ec2c3af6b7234ad629ef8"
    end
  end

  def install
    bin.install "sh2pil"
    bin.install "helpers/sh2pil-sessions"
    bin.install "helpers/sh2pil-open"
    bin.install "helpers/sh2pil-last"
    (share/"sh2pil").install "config.example.yaml"
  end

  test do
    assert_match "sh2pil", shell_output("#{bin}/sh2pil --version")
  end
end
