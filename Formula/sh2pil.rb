class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.1/sh2pil_0.6.1_darwin_arm64.tar.gz"
      sha256 "bc3ab7c26aa4bf5e8b8e52a8d494dbd24a8b84b7a923e33e9aa9ff85beac0d61"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.1/sh2pil_0.6.1_linux_amd64.tar.gz"
      sha256 "e5ee43fa70b166812e3673de965f4890e7df20f1198c6a77c8fff604eb796679"
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
