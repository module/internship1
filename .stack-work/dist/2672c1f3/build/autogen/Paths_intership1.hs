module Paths_intership1 (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "D:\\intership\\intership1\\.stack-work\\install\\29d018e7\\bin"
libdir     = "D:\\intership\\intership1\\.stack-work\\install\\29d018e7\\lib\\x86_64-windows-ghc-7.10.3\\intership1-0.1.0.0-Lfbg7gCS9rT0C3RBCp6M7p"
datadir    = "D:\\intership\\intership1\\.stack-work\\install\\29d018e7\\share\\x86_64-windows-ghc-7.10.3\\intership1-0.1.0.0"
libexecdir = "D:\\intership\\intership1\\.stack-work\\install\\29d018e7\\libexec"
sysconfdir = "D:\\intership\\intership1\\.stack-work\\install\\29d018e7\\etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "intership1_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "intership1_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "intership1_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "intership1_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "intership1_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
