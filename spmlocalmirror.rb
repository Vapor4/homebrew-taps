# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Spmlocalmirror < Formula
  desc "Swift Package Manager本地镜像加速器"
  homepage "https://github.com/Vapor4/SPMLocalMirror"
  head "https://github.com/Vapor4/SPMLocalMirror.git"

#   depends_on :xcode => "11"
  stable do
    version "0.1.7"
    url "https://github.com/Vapor4/SPMLocalMirror/archive/0.1.7.tar.gz"
    sha256 "bb39c81d83f9f185928c77f9eba53ec8ab9167b8700b0a9c2167d4eb4a6867fc"
  end
  def install
    system "swift", "build", "--disable-sandbox"
    system "mv", ".build/x86_64-apple-macosx/debug/SPMLocalMirror", "spm-mirror"
    bin.install "spm-mirror"
  end
  test do
    system "spm-mirror", "-h"
  end
end

