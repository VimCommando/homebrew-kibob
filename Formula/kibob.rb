class Kibob < Formula
  desc "Git-inspired CLI tool for managing Kibana saved objects"
  homepage "https://github.com/VimCommando/kibana-object-manager"
  url "https://github.com/VimCommando/kibana-object-manager/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "caa260768f03f66d4c50b0e64ff12e22e68e36b8b422d8f947c39b143ff8dce6"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "kibob", shell_output("#{bin}/kibob --help")
  end
end
