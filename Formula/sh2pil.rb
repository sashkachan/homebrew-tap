class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.0/sh2pil_0.6.0_darwin_arm64.tar.gz"
      sha256 "33ce18943d9b145148333bfb7dc73da8394488dec97fbf340b7778d69ce1f0cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.0/sh2pil_0.6.0_linux_amd64.tar.gz"
      sha256 "b6849de32e767b987f3140d5a32fedeb33c0eec931b613d1e7fa53678829d6c5"
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
