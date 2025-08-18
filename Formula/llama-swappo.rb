class LlamaSwappo < Formula
  desc "Proxy server for swapping models on llama.cpp"
  homepage "https://github.com/tristan-k/llama-swappo"
  version "153"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_darwin_arm64.tar.gz"
      sha256 "dbacc1473762f1ca578ef954d9a9801c9763ba63165c0e8dc5f11c6d4ba2d5a1"
    end
    on_intel do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_darwin_amd64.tar.gz"
      sha256 "37b8d86152ee3d36f63ed5e29a1e8bfe9234c157c723f0d40e9d7243741c5683"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_linux_arm64.tar.gz"
      sha256 "4b34f2d3b4bdc9b63dcdec52e149ede2f211fc29d3f6d3b0ac7d4b46cf67ac34"
    end
    on_intel do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_linux_amd64.tar.gz"
      sha256 "82a9abbcce833d62a09e0495c3e33d4057c89673cae4edd08f10af1f661d6059"
    end
  end

  def install
    bin.install "llama-swappo"
  end

  test do
    system "#{bin}/llama-swappo", "--version"
  end
end
