class MarlobuProxy < Formula
  desc "PostgreSQL proxy with copy-on-write session isolation"
  homepage "https://github.com/apridosimarmata/marlobu-proxy"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/apridosimarmata/marlobu-proxy/releases/download/v0.5.0/marlobu-proxy-darwin-x86_64.tar.gz"
      sha256 "PLACEHOLDER_X86_64"
    end
    on_arm do
      url "https://github.com/apridosimarmata/marlobu-proxy/releases/download/v0.5.0/marlobu-proxy-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64"
    end
  end

  on_linux do
    url "https://github.com/apridosimarmata/marlobu-proxy/releases/download/v0.5.0/marlobu-proxy-linux-x86_64.tar.gz"
    sha256 "PLACEHOLDER_LINUX"
  end

  def install
    bin.install "marlobu-proxy"
  end

  test do
    assert_match "marlobu-proxy", shell_output("#{bin}/marlobu-proxy --version 2>&1", 1)
  end
end
