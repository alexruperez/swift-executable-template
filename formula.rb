class EXECUTABLE-NAME < Formula
  desc "EXECUTABLE-NAME"
  homepage "https://github.com/AUTHOR-HANDLE/EXECUTABLE-NAME"
  url "https://github.com/AUTHOR-HANDLE/EXECUTABLE-NAME/archive/0.1.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  head "https://github.com/AUTHOR-HANDLE/EXECUTABLE-NAME.git"

  depends_on :xcode => "11.4"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
