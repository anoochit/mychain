package keeper_test

import (
	"context"
	"testing"

	keepertest "github.com/anoochit/mychain/testutil/keeper"
	"github.com/anoochit/mychain/x/mychain/keeper"
	"github.com/anoochit/mychain/x/mychain/types"
	sdk "github.com/cosmos/cosmos-sdk/types"
)

func setupMsgServer(t testing.TB) (types.MsgServer, context.Context) {
	k, ctx := keepertest.MychainKeeper(t)
	return keeper.NewMsgServerImpl(*k), sdk.WrapSDKContext(ctx)
}
