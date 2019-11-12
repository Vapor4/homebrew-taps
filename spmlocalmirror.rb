# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Spmlocalmirror < Formula
  desc "Swift Package Manager本地镜像加速器"
  homepage "https://github.com/Vapor4/SPMLocalMirror"
  head "https://github.com/Vapor4/SPMLocalMirror.git"

#   depends_on :xcode => "11"
  stable do
    version "0.1.8"
    url "https://github.com/Vapor4/SPMLocalMirror/archive/0.1.8.tar.gz"
    sha256 "b208d73aa8c961a14edc8ecbf7f5fef3c4158db41265abf0a16b2c0b79d98cde"
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

