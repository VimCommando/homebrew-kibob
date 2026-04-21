class Kibob < Formula
  desc "Migrated to the VimCommando/tools tap"
  homepage "https://github.com/VimCommando/homebrew-tools"
  url "https://github.com/VimCommando/homebrew-kibob/archive/refs/heads/main.tar.gz"
  version "0.0.0"
  sha256 "3c2a527d1b764b046309af4b1d425db2eab1d3a6d8624f1af5365eee40e02d8a"
  license "Apache-2.0"

  def install
    odie <<~EOS
      kibob has moved to the VimCommando/tools tap.

      Run:
        brew untap VimCommando/kibob
        brew tap VimCommando/tools
        brew install kibob
    EOS
  end
end
