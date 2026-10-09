class MarlobuProxy < Formula
  desc "PostgreSQL proxy with copy-on-write session isolation"
  homepage "https://github.com/apridosimarmata/marlobu-proxy"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/apridosimarmata/marlobu-proxy/releases/download/v0.5.0/marlobu-proxy-darwin-x86_64.tar.gz"
      sha256 "dc48e1f135d32f560f7d92eb27f0cfed2e6467390fa5181a3fd958465631cdb6"
    end
    on_arm do
      url "https://github.com/apridosimarmata/marlobu-proxy/releases/download/v0.5.0/marlobu-proxy-darwin-arm64.tar.gz"
      sha256 "9862f00841b150fbb89ca2371ad7a6d2124eb1d3b2c8f89c7001ffc0613fa62e"
    end
  end

  on_linux do
    url "https://github.com/apridosimarmata/marlobu-proxy/releases/download/v0.5.0/marlobu-proxy-linux-x86_64.tar.gz"
    sha256 "d28a5853c5816bcb63d5e9ea72e12903d3f6b2cbe084dd7d8ad5ed6bc96069c3"
  end

  def install
    bin.install "marlobu-proxy"
  end

  test do
    assert_match "marlobu-proxy", shell_output("#{bin}/marlobu-proxy --version 2>&1", 1)
  end
end
