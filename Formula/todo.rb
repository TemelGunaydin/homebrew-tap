
class Todo < Formula
  desc "Small terminal todo app written in Swift"
  homepage "https://github.com/TemelGunaydin/terminal-todos"
  url "https://github.com/TemelGunaydin/terminal-todos/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "63b35051a662b849043f39c71f0a2fea346bba2aebbd5f770d5ea4f6a0883aea"
  license "MIT"

  depends_on :macos

  def install
    # SwiftPM'in kendi sandbox'ını kapatıyoruz, yoksa Homebrew sandbox'ı ile çakışıyor
    system "swift", "build", "-c", "release", "--disable-sandbox"

    # Buradaki binary adını kendi projenin .build/release içindeki isme göre ayarla
    bin.install ".build/release/todo_terminal" => "todo"
  end
end
