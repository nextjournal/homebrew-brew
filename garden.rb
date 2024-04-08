class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.6"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.6/garden-linux-aarch64-static.tar.gz"
      sha256 "1429948360435b4aa276d463ed79d6e4aa51b130519bf7e6ee35552e55bcf4be"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.6/garden-linux-amd64-static.tar.gz"
      sha256 "1429948360435b4aa276d463ed79d6e4aa51b130519bf7e6ee35552e55bcf4be"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.6/garden-macos-aarch64.tar.gz"
      sha256 "ff7e47339e39ca14b8af574398cc737e00333f688369df94e15efcb0f7064efb"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.6/garden-macos-amd64.tar.gz"
      sha256 "cb70a3c84ab02d27c976ba73fadcce7b3b4a6f89376aae78dfdae79453cf0a06"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
