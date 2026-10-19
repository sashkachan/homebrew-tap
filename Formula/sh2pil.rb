class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.2/sh2pil_0.6.2_darwin_arm64.tar.gz"
      sha256 "396aad90d36e3094589e1404382d22e9d28359bd35c58366f73f5dc5aa330803"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.2/sh2pil_0.6.2_linux_amd64.tar.gz"
      sha256 "9157f0509d1f4c5b557c27f42e4f1ffe40c7c07f9800cb7859d5777bc386992d"
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
