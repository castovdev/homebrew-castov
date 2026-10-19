class Castov < Formula
  desc "Fast, offline developer utilities & MCP server in your terminal"
  homepage "https://castov.com"
  url "https://registry.npmjs.org/castov/-/castov-1.4.0.tgz"
  sha256 "60d8fb0c988f5c61939b102e61b6c1876b62bb322c11a1ae9c4a01f2d7a927ed"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.3.3", shell_output("#{bin}/castov --version")
    assert_match "UUID", shell_output("#{bin}/castov uuid")
  end
end
