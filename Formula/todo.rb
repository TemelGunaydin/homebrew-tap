
class Todo < Formula
  desc "Small terminal todo app written in Swift"
  homepage "https://github.com/TemelGunaydin/terminal-todos"
  url "https://github.com/TemelGunaydin/terminal-todos/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "491a8a7532c2a75525dd46b84aa588b84c583150e8c2f3583d60bf65c0571d6d"
  license "MIT"

  depends_on :macos

  def install
    # SwiftPM'in kendi sandbox'ını kapatıyoruz, yoksa Homebrew sandbox'ı ile çakışıyor
    system "swift", "build", "-c", "release", "--disable-sandbox"

    # Buradaki binary adını kendi projenin .build/release içindeki isme göre ayarla
    bin.install ".build/release/todo_terminal" => "todo"
  end
end
