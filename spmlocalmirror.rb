# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Spmlocalmirror < Formula
  desc "Swift Package Manager本地镜像加速器"
  homepage "https://github.com/Vapor4/SPMLocalMirror"
  head "https://github.com/Vapor4/SPMLocalMirror.git"

#   depends_on :xcode => "11"
  stable do
    version "0.1.6"
    url "https://github.com/Vapor4/SPMLocalMirror/archive/0.1.6.tar.gz"
    sha256 "fff9c412b297976b73386d30f06cb2ef35f295ce953621783ce52af918d49f45"
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

