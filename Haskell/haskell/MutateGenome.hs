{-# LANGUAGE ForeignFunctionInterface #-}
 
module MutateGenome where
 
import Foreign.C.Types
 
mutateGenome :: String -> String -> String
mutateGenome sone stwo = (++) sone stwo

mutateGenome_hs :: CString -> CString -> CString
mutateGenome_hs = peekCString . mutateGenome . newCString
 
foreign export ccall mutateGenome_hs :: CString -> CString
