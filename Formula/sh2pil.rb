class Sh2pil < Formula
  desc "Terminal session picker for Pi, OpenCode, Claude Code, and Codex"
  homepage "https://github.com/sashkachan/sh2pil"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.1.0/sh2pil_0.1.0_darwin_arm64.tar.gz"
      sha256 "94190e4000a2c7c4f7cdc1273db0c85ddc04da0b24457da0dd70fea77bd6aa36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sashkachan/sh2pil/releases/download/v0.1.0/sh2pil_0.1.0_linux_amd64.tar.gz"
      sha256 "3a7dc90f5ac66f24c0f467b360850643484d39886d6356372b5e058018fd499c"
    end
  end

  def install
    bin.install "sh2pil"
    bin.install "helpers/pib" => "pib"
    bin.install "helpers/pib-open" => "pib-open"
    bin.install "helpers/pi-last" => "pi-last"
    (share/"sh2pil").install "config.example.yaml"
  end

  test do
    assert_match "sh2pil", shell_output("#{bin}/sh2pil --version")
  end
end
