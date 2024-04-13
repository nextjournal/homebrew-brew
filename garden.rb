class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.9"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.9/garden-linux-aarch64-static.tar.gz"
      sha256 "79e74c3ddd82325ae5cd739b5f1e443bde72b5a4cea1dbc96f21dc463018c53f"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.9/garden-linux-amd64-static.tar.gz"
      sha256 "79e74c3ddd82325ae5cd739b5f1e443bde72b5a4cea1dbc96f21dc463018c53f"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.9/garden-macos-aarch64.tar.gz"
      sha256 "47a174041e00ff8e2b79a747b47383de1a1102dda10e2ded81e3df478116595f"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.9/garden-macos-amd64.tar.gz"
      sha256 "e33a0d2fde51a66986e1db8a7e93910a1be52fe1946a76ba794e753d2194ce01"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
