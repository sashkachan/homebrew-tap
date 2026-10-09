class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.2.1/sh2pil_0.2.1_darwin_arm64.tar.gz"
      sha256 "143a5773c12e726cee3c5bb8ab6e84ce7b8588a6a5d3c6542e56e849bb064c4b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.2.1/sh2pil_0.2.1_linux_amd64.tar.gz"
      sha256 "a2d7621aa2c803d4c05a2fc5fc25e58fa1e37eff57df614aa6735eeb149a3504"
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
