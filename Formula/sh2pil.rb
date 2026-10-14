class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.5.0/sh2pil_0.5.0_darwin_arm64.tar.gz"
      sha256 "2249639949c6a3bc55ec69a22bef9e514ab522d2f39504da49aa0fbcf97beaed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.5.0/sh2pil_0.5.0_linux_amd64.tar.gz"
      sha256 "3dd7326f979a95d69f588c73c128fbaf091a9c30044b380105c47ea5a10f5efc"
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
