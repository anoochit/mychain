package keeper

import (
	"github.com/anoochit/mychain/x/blog/types"
)

var _ types.QueryServer = Keeper{}
