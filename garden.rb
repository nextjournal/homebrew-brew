class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.0.6"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.6/garden-linux-aarch64-static.tar.gz"
      sha256 "5b5c794aaf2fcd541b52bbf556c395320e5ef94e774d39c971916bf01ffd83d7"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.6/garden-linux-amd64-static.tar.gz"
      sha256 "5b5c794aaf2fcd541b52bbf556c395320e5ef94e774d39c971916bf01ffd83d7"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.6/garden-macos-aarch64.tar.gz"
      sha256 "4860720d92bbc6c50efe64448763ec265a04274a3b342c92ff0b587788f95d3d"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.6/garden-macos-amd64.tar.gz"
      sha256 "5255c5104dc5898a4c63e824b16017333be5bf82cfa738701e72dc178b88c7b0"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
