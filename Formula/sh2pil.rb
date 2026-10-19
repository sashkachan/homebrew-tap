class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.3/sh2pil_0.6.3_darwin_arm64.tar.gz"
      sha256 "7df5e631ac85b73f6379e3328e4bedbb4a5d5698be9e50b3961df68f08ac4991"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.3/sh2pil_0.6.3_linux_amd64.tar.gz"
      sha256 "92299aafd4eb414db8f4ba6b0e2c85baa5517301553fae6460015739c4698d47"
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
