class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.4/sh2pil_0.6.4_darwin_arm64.tar.gz"
      sha256 "4294b1529f8b03860913a34eb2b1b9a395f275ce8f228186d66d364877d910af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.6.4/sh2pil_0.6.4_linux_amd64.tar.gz"
      sha256 "095d411144c55b949fb9d96ef3e7dde39a2a3b22f4f98dacf0c12c54a807e753"
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
