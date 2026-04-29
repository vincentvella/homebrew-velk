class Velk < Formula
  desc "Zig 0.16 terminal AI harness — Anthropic + OpenAI, MCP, vim mode, OSC-52 clipboard"
  homepage "https://github.com/vincentvella/velk"
  version "0.0.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-darwin-arm64.tar.gz"
      sha256 "4d054febc72d8b79ffbb4223369cd789728ced4769da6e58d55b4d5979be893f"
    end
    on_intel do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-darwin-x64.tar.gz"
      sha256 "e6a1c3709d4655504aa079958ab9804bb4d6ee66b8634bc0040bd4e52dcaf16c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-linux-arm64.tar.gz"
      sha256 "2fcc7c74e89ec8cf11ca729994cd8f6392e1b742a797b0411113880d14f87fbf"
    end
    on_intel do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-linux-x64.tar.gz"
      sha256 "98a92ca54145c1a3b2d69621715293476a6c54a206641081f69110e9da79b368"
    end
  end

  def install
    bin.install "velk"
  end

  test do
    assert_match "velk #{version}", shell_output("#{bin}/velk --version")
  end
end
