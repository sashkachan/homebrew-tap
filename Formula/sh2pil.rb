class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.2.2/sh2pil_0.2.2_darwin_arm64.tar.gz"
      sha256 "fcbc91426507b7b89c861367f2e728c6bb8e388f80350bef703bf80398cf6cc1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.2.2/sh2pil_0.2.2_linux_amd64.tar.gz"
      sha256 "1d9173313a94de28a397f02fcf8718220434f07dcf9bf9e7de51591da47fa25d"
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
