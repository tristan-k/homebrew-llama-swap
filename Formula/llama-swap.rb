class LlamaSwap < Formula
  desc "Proxy server for swapping models on llama.cpp"
  homepage "https://github.com/tristan-k/llama-swappo"
  version "150"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_darwin_arm64.tar.gz"
      sha256 "68e50ded95d6f11f12362cf4dae44c1d51ca66aeea0c99a1d93c630e6440dab4"
    end
    on_intel do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_darwin_amd64.tar.gz"
      sha256 "9e5f9df342a5f7c22c63643188798a313081b51c9fc9ce780395e5452e9fa5bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_linux_arm64.tar.gz"
      sha256 "ec397aedda6561efbec17eff69fd583dbdc23febc0d879790579a165651a7454"
    end
    on_intel do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_linux_amd64.tar.gz"
      sha256 "641d48e3271848e7c43a3ec8f1996b7c4533b3063e1a0621668991aa7434876c"
    end
  end

  def install
    bin.install "llama-swappo"
  end

  test do
    system "#{bin}/llama-swappo", "--version"
  end
end
