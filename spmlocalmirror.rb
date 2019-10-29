# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Spmlocalmirror < Formula
  desc "Swift Package Manager本地镜像加速器"
  homepage "SPMLocalMirror"
  url "https://github.com/Vapor4/SPMLocalMirror/archive/0.1.3.tar.gz"
  sha256 "f585372ec40ba9ac7dce2e995d86b2d1a8a2564549a3c2dcac717338a5163a6e"

  # depends_on "cmake" => :build
  def install
    system "make", "install", "PREFIX=#{prefix}" # if this fails, try separate make/make install steps
  end

  depends_on :xcode => ["11.0", :build]
end
