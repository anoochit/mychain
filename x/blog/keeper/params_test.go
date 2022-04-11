package keeper_test

import (
	"testing"

	testkeeper "github.com/anoochit/mychain/testutil/keeper"
	"github.com/anoochit/mychain/x/blog/types"
	"github.com/stretchr/testify/require"
)

func TestGetParams(t *testing.T) {
	k, ctx := testkeeper.BlogKeeper(t)
	params := types.DefaultParams()

	k.SetParams(ctx, params)

	require.EqualValues(t, params, k.GetParams(ctx))
}
