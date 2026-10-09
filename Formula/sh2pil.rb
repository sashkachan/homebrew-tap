class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.4.2/sh2pil_0.4.2_darwin_arm64.tar.gz"
      sha256 "50bae3ac74719c993b2288e903c71973d2462c6515eeed5da6decbde2898d3b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.4.2/sh2pil_0.4.2_linux_amd64.tar.gz"
      sha256 "4b63c32e3f2a5d1d9250533129b5f47d0209573b2e215ae728d18ae00425ad91"
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
