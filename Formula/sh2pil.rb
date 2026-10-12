class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.4.3/sh2pil_0.4.3_darwin_arm64.tar.gz"
      sha256 "941f3eecc1ca99e29163d0b148ab1279fbac34db091bc87efbdaa58b2ba082dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.4.3/sh2pil_0.4.3_linux_amd64.tar.gz"
      sha256 "ff711e141df49676f5e6c7d46b477e841aa6893cf5a4fec4f9b935ad8251d60d"
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
