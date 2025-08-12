class LlamaSwap < Formula
  desc "Proxy server for swapping models on llama.cpp"
  homepage "https://github.com/tristan-k/llama-swappo"
  version "149"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_darwin_arm64.tar.gz"
      sha256 "9ee4be33bbd88210ebafb519f64e3851291cf89b27b4162e492960f59c11786c"
    end
    on_intel do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_darwin_amd64.tar.gz"
      sha256 "6cedbf3a612e2625a93ce7b0bfb879044976e82ffd06ba5b459171d0b3af5e16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_linux_arm64.tar.gz"
      sha256 "336407767a67e34d6a0fa2d98c98232169270b86e4f4bd0b35045953e840c6a2"
    end
    on_intel do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swappo_#{version}_linux_amd64.tar.gz"
      sha256 "e419b55e26dc68d813ca8cdf92b2823aabe252d1b8625ed1b0f642d11ab624d4"
    end
  end

  def install
    bin.install "llama-swappo"
  end

  test do
    system "#{bin}/llama-swappo", "--version"
  end
end
