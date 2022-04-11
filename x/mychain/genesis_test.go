package mychain_test

import (
	"testing"

	keepertest "github.com/anoochit/mychain/testutil/keeper"
	"github.com/anoochit/mychain/testutil/nullify"
	"github.com/anoochit/mychain/x/mychain"
	"github.com/anoochit/mychain/x/mychain/types"
	"github.com/stretchr/testify/require"
)

func TestGenesis(t *testing.T) {
	genesisState := types.GenesisState{
		Params: types.DefaultParams(),

		// this line is used by starport scaffolding # genesis/test/state
	}

	k, ctx := keepertest.MychainKeeper(t)
	mychain.InitGenesis(ctx, *k, genesisState)
	got := mychain.ExportGenesis(ctx, *k)
	require.NotNil(t, got)

	nullify.Fill(&genesisState)
	nullify.Fill(got)

	// this line is used by starport scaffolding # genesis/test/assert
}
