class I586ElfBinutils < Formula
  desc "GNU Binutils targetting i586-elf"
  homepage "https://www.gnu.org/software/binutils/"
  url "http://mirrors.ustc.edu.cn/gnu/binutils/binutils-2.30.tar.xz"
  version "2.30"
  sha256 "6e46b8aeae2f727a36f0bd9505e405768a72218f1796f0d09757d45209871ae6"

  def install
    mkdir "binutils-build" do
      system "../configure", "--prefix=#{prefix}",
                             "--target=i586-elf",
                             "--disable-multilib",
                             "--disable-nls",
                             "--disable-werror"
      system "make"
      system "make", "install"
    end
  end

end
