package keeper_test

import (
	"testing"

	testkeeper "github.com/anoochit/mychain/testutil/keeper"
	"github.com/anoochit/mychain/x/mychain/types"
	"github.com/stretchr/testify/require"
)

func TestGetParams(t *testing.T) {
	k, ctx := testkeeper.MychainKeeper(t)
	params := types.DefaultParams()

	k.SetParams(ctx, params)

	require.EqualValues(t, params, k.GetParams(ctx))
}
