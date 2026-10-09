class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.3.0/sh2pil_0.3.0_darwin_arm64.tar.gz"
      sha256 "591178dd74d6ad4bcccf8ffff5e2628ff6f02dda39bc8f4027b040de2928f2a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.3.0/sh2pil_0.3.0_linux_amd64.tar.gz"
      sha256 "f156bd9d5fdba9c796d9ff98abfb31ed53fd22652db5a7e0f0f1a53d9d7e627e"
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
