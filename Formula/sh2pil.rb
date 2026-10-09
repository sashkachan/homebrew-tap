class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.4.1/sh2pil_0.4.1_darwin_arm64.tar.gz"
      sha256 "ede974fc3366f8f2e3df94445121516766d95b80530844ff6df4ce33f89ab3aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.4.1/sh2pil_0.4.1_linux_amd64.tar.gz"
      sha256 "c7cb81b3c30ae3724a75d8a40da4325fab4c8889ef4427ac67129b7ccc978a00"
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
