class Velk < Formula
  desc "Zig 0.16 terminal AI harness — Anthropic + OpenAI, MCP, vim mode, OSC-52 clipboard"
  homepage "https://github.com/vincentvella/velk"
  version "0.0.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-darwin-arm64.tar.gz"
      sha256 "dc151b665327bc45a78bf4113ab7a06f93b8cf23ac993339f289ebcdef9c190c"
    end
    on_intel do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-darwin-x64.tar.gz"
      sha256 "0b0f189ec011d8875c2725b5713dc88a1dac94420464ef53047c5ff18a17b102"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-linux-arm64.tar.gz"
      sha256 "4ac004947132374eb2b69462358ff74a7beea7235dd252d9d9010d488165294b"
    end
    on_intel do
      url "https://github.com/vincentvella/velk/releases/download/v#{version}/velk-linux-x64.tar.gz"
      sha256 "fea816e4fa0bb1c814baedee8a06f2fdcf16aab312ff5ddcb19fa0544f0d7e6e"
    end
  end

  def install
    bin.install "velk"
  end

  test do
    assert_match "velk #{version}", shell_output("#{bin}/velk --version")
  end
end
