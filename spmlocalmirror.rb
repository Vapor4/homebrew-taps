# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Spmlocalmirror < Formula
  desc "Swift Package Manager本地镜像加速器"
  homepage "SPMLocalMirror"
  url "https://github.com/Vapor4/SPMLocalMirror/archive/0.1.2.tar.gz"
  sha256 "fd4cde9d235e8cd1109d637fedee9fee166bf5efa94ee7181077eb0113d3af19"

  # depends_on "cmake" => :build
  def install
    system "make", "install", "PREFIX=#{prefix}" # if this fails, try separate make/make install steps
  end

  depends_on :xcode => ["11.0", :build]
end
