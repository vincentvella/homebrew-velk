class Velk < Formula
  desc "Zig 0.16 terminal AI harness — Anthropic + OpenAI, MCP, vim mode, OSC-52 clipboard"
  homepage "https://github.com/vincentvella/velk"
  version "0.0.5-rc1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-darwin-arm64.tar.gz"
      sha256 "53015a13002e8e03c99b1847e2b0b6adf1fbf28157c300638fe426b9dceeb68a"
    end
    on_intel do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-darwin-x64.tar.gz"
      sha256 "fcf671045eb8d1076157e6d41650c40281ae64b369f1b5229fcdad55d0473558"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-linux-arm64.tar.gz"
      sha256 "82c0d09f8455b11084345e366f77c0da919e2cf8fc45dd785e0746790b0e1f51"
    end
    on_intel do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-linux-x64.tar.gz"
      sha256 "13adf37fbeb6f0f4727cc66dba48d4a7bf096233f9d7d50559c9a301ad21422b"
    end
  end

  def install
    bin.install "velk"
  end

  test do
    assert_match "velk #{version}", shell_output("#{bin}/velk --version")
  end
end
