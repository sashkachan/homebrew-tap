class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.2.0/sh2pil_0.2.0_darwin_arm64.tar.gz"
      sha256 "911d4614d3c4e71ce730a868f3e96e3a081b598e8be8156773fce110258ed48f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.2.0/sh2pil_0.2.0_linux_amd64.tar.gz"
      sha256 "0640a2827c16970b6aa307c4e016a38bc5b1c029379dfb061250f6c84fa8c764"
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
