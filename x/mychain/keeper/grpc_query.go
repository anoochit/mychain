package keeper

import (
	"github.com/anoochit/mychain/x/mychain/types"
)

var _ types.QueryServer = Keeper{}
