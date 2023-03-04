module Division where

import Prelude
import Data.Either (Either(..))
import DivisionError (DivisionError(..))

divide
  :: Number
  -> Number
  -> Either DivisionError Number
divide n d =
  if (d == 0.0) then Left DivideByZero
  else pure $ n / d