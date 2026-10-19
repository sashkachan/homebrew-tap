class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.2/sh2pil_0.6.2_darwin_arm64.tar.gz"
      sha256 "86e1dd9ba47b59a2d64d0a63625428c651efda1cc771228c2eaf3acd6c75ef20"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.2/sh2pil_0.6.2_linux_amd64.tar.gz"
      sha256 "132999e29b3f670088fe609917e39231f543aebc30113f8bf9be2101ff2f532e"
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
