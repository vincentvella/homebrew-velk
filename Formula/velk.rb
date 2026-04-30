class Velk < Formula
  desc "Zig 0.16 terminal AI harness — Anthropic + OpenAI, MCP, vim mode, OSC-52 clipboard"
  homepage "https://github.com/vincentvella/velk"
  version "0.0.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-darwin-arm64.tar.gz"
      sha256 "277f29e3fcb9c7b82c0a2f626fa23f045da09d74dc4f58f36cc31af6e7af4de6"
    end
    on_intel do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-darwin-x64.tar.gz"
      sha256 "8f9520070d6c3c88ce92333f5c15e328a8fda6cd0f350657d7b2e9f7b8beda15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-linux-arm64.tar.gz"
      sha256 "f2666bb1f9b9d1f5f0df25fb3eeb32f640ad2df636194da2baf6ca089dc003e4"
    end
    on_intel do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-linux-x64.tar.gz"
      sha256 "2989fc189440794c8fbe75bf1b8c6f07eed046dcad262eafb8d151474992ca94"
    end
  end

  def install
    bin.install "velk"
  end

  test do
    assert_match "velk #{version}", shell_output("#{bin}/velk --version")
  end
end
