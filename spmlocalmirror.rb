# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Spmlocalmirror < Formula
  desc "Swift Package Manager本地加速器"
  homepage "https://github.com/Vapor4/SPMLocalMirror"
  url "https://github.com/Vapor4/SPMLocalMirror.git", :tag => "0.1.4", :revision => "5c821170f713625ea8d1ed332fdf52885de3af3c"
  head "https://github.com/Vapor4/SPMLocalMirror.git", :shallow => false

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
