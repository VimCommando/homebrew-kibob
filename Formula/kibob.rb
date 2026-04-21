class Kibob < Formula
  desc "Migrated to the VimCommando/tools tap"
  homepage "https://github.com/VimCommando/homebrew-tools"
  url "https://github.com/VimCommando/homebrew-kibob/archive/refs/heads/main.tar.gz"
  version "0.0.0"
  sha256 "3d9d10588b8284d638ad5f8b73892f715f28e2b103ebc4936ee5d6087caf04d2"
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
