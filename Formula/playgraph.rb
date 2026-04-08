class Playgraph < Formula
  desc "Markdown-powered interactive animation viewer for math, physics, and more"
  homepage "https://github.com/leaf-kit/playgraph.md"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/leaf-kit/playgraph.md/releases/download/v0.1.0/playgraph-0.1.0-x86_64-darwin.tar.gz"
      sha256 "82e69be7855a4607f18d19d2b59d9e9bb9117db9b38aa77d1b6914c098d3e988"
    end
  end

  def install
    bin.install "playgraph"
  end

  test do
    assert_match "playgraph", shell_output("#{bin}/playgraph --version")
  end
end
