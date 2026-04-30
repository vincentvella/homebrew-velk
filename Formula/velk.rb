class Velk < Formula
  desc "Zig 0.16 terminal AI harness — Anthropic + OpenAI, MCP, vim mode, OSC-52 clipboard"
  homepage "https://github.com/vincentvella/velk"
  version "0.0.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-darwin-arm64.tar.gz"
      sha256 "eb865141947c32ccd9d5d2306905f0fc594d6ccfcb5f020c2d756cfa21317a1c"
    end
    on_intel do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-darwin-x64.tar.gz"
      sha256 "599918b705a52c5bf74a3eafc1b1adebfe7aba3ca3f15b6d19a9ad26b32ca06c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-linux-arm64.tar.gz"
      sha256 "f0036176c697a51e13fe4017cc02dc82bf7b6cf3e287d1918560d648a9a78302"
    end
    on_intel do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-linux-x64.tar.gz"
      sha256 "f4983ab7d25fccc03292ac4a6f3147b654eb1b0eae32be55d2f3bb4301778dd5"
    end
  end

  def install
    bin.install "velk"
  end

  test do
    assert_match "velk #{version}", shell_output("#{bin}/velk --version")
  end
end
