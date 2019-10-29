# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Spmlocalmirror < Formula
  desc "Swift Package Manager本地镜像加速器"
  homepage "SPMLocalMirror"
  url "https://github.com/Vapor4/SPMLocalMirror/archive/0.1.1.tar.gz"
  sha256 "4be6746e5e5c14eca9956d3cb076a22d298410f4ce356ff16f1b7cd0a8958737"

  # depends_on "cmake" => :build
  def install
    system "make", "install", "PREFIX=#{prefix}" # if this fails, try separate make/make install steps
  end

  depends_on :xcode => ["11.0", :build]
end
