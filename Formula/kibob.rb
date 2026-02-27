class Kibob < Formula
  desc "Git-inspired CLI tool for managing Kibana saved objects"
  homepage "https://github.com/VimCommando/kibana-object-manager"
  url "https://github.com/VimCommando/kibana-object-manager/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2ade53ff7193b9bb9008a1a0bcfa6d8d1a7c16c4ff64d7572ac436fb7f57ee37"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/VimCommando/homebrew-kibob/releases/download/kibob-0.2.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "572a2236aa74a9351f23dad1dfb19cc89593e72ed5e771bbd52eeda1c02aca64"
    sha256 cellar: :any_skip_relocation, sequoia:      "5fad6b179cf5a4b08cbebadc949dd04a241d6bef9fa095275eebaae574232a49"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "039714ce9c5c64c6f476e6327f3dd53bc2d53d51b4e5d5c784e0426058831fd3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "kibob", shell_output("#{bin}/kibob --help")
  end
end
