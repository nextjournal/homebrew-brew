class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.2"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.2/garden-linux-aarch64-static.tar.gz"
      sha256 "4c83c80651059fc0c6b3e052e54f56d01bd042f99fdd389166a3638ad1c1e8bf"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.2/garden-linux-amd64-static.tar.gz"
      sha256 "4c83c80651059fc0c6b3e052e54f56d01bd042f99fdd389166a3638ad1c1e8bf"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.2/garden-macos-aarch64.tar.gz"
      sha256 "92b71e6cd486b7a82779387e2d119066180c38519f29fa92e68fb69ab26559e0"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.2/garden-macos-amd64.tar.gz"
      sha256 "d090b90327f75a69e949b46333383c1a5b5090fc5b0741bd2f9e374ba91ef6fc"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
