package blog_test

import (
	"testing"

	keepertest "github.com/anoochit/mychain/testutil/keeper"
	"github.com/anoochit/mychain/testutil/nullify"
	"github.com/anoochit/mychain/x/blog"
	"github.com/anoochit/mychain/x/blog/types"
	"github.com/stretchr/testify/require"
)

func TestGenesis(t *testing.T) {
	genesisState := types.GenesisState{
		Params: types.DefaultParams(),

		BlogList: []types.Blog{
			{
				Id: 0,
			},
			{
				Id: 1,
			},
		},
		BlogCount: 2,
		// this line is used by starport scaffolding # genesis/test/state
	}

	k, ctx := keepertest.BlogKeeper(t)
	blog.InitGenesis(ctx, *k, genesisState)
	got := blog.ExportGenesis(ctx, *k)
	require.NotNil(t, got)

	nullify.Fill(&genesisState)
	nullify.Fill(got)

	require.ElementsMatch(t, genesisState.BlogList, got.BlogList)
	require.Equal(t, genesisState.BlogCount, got.BlogCount)
	// this line is used by starport scaffolding # genesis/test/assert
}
