cask "playgraph" do
  version "0.1.0"
  sha256 "ecd2b96cd191c5f61da4eb34b045a88a874517eab94b305fdbfefcbd53ad2047"

  url "https://github.com/leaf-kit/playgraph.md/releases/download/v#{version}/playgraph-#{version}-x86_64-darwin.app.zip"
  name "PlayGraph"
  desc "Markdown-powered interactive animation viewer for math, physics, and more"
  homepage "https://github.com/leaf-kit/playgraph.md"

  app "playgraph.app"

  zap trash: [
    "~/Library/Application Support/md.playgraph",
  ]
end
