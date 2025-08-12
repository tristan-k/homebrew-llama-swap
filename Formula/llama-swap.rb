class LlamaSwap < Formula
  desc "Proxy server for swapping models on llama.cpp"
  homepage "https://github.com/tristan-k/llama-swappo"
  version "150"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swap_#{version}_darwin_arm64.tar.gz"
      sha256 "fe82be3e85eac0173dff61dd056d8a03f64d2235e26dc41a10f3ca51bef53c1e"
    end
    on_intel do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swap_#{version}_darwin_amd64.tar.gz"
      sha256 "52a6e5513145113821a76d52d8a3fdcf901ee415a40b10981818fff6b6d928c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swap_#{version}_linux_arm64.tar.gz"
      sha256 "e787afd2e2f31d6313ff64d6fc6452d7eeabf99fc9034fc6288f0138e9995e49"
    end
    on_intel do
      url "https://github.com/tristan-k/llama-swappo/releases/download/v#{version}/llama-swap_#{version}_linux_amd64.tar.gz"
      sha256 "8bdf8b9c7dff47b636bf7812b98ab2cce99204b4a7a3d380d455cbc7a7374555"
    end
  end

  def install
    bin.install "llama-swap"
  end

  test do
    system "#{bin}/llama-swap", "--version"
  end
end
