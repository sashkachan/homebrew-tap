class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.4.0/sh2pil_0.4.0_darwin_arm64.tar.gz"
      sha256 "5f561715fd5f2fb1bc7f8604d98d239367285e52198622e5c941e5025d507786"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.4.0/sh2pil_0.4.0_linux_amd64.tar.gz"
      sha256 "8cb158ab2cb7cfb72ab88fb1c7f8fb4d27f21ddd34ea02933fc35c5f7611dd82"
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
