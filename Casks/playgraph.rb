cask "playgraph" do
  version "0.2.0"
  sha256 "11e370e928b09f6e65ed4d01daf3a3e27592586c32db6f478100c0dc06b78e41"

  url "https://github.com/leaf-kit/playgraph.md/releases/download/v#{version}/playgraph-#{version}-x86_64-darwin.app.zip"
  name "PlayGraph"
  desc "Markdown-powered interactive animation viewer for math, physics, and more"
  homepage "https://github.com/leaf-kit/playgraph.md"

  app "playgraph.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/playgraph.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/md.playgraph",
  ]
end
