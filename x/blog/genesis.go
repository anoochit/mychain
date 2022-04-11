package blog

import (
	"github.com/anoochit/mychain/x/blog/keeper"
	"github.com/anoochit/mychain/x/blog/types"
	sdk "github.com/cosmos/cosmos-sdk/types"
)

// InitGenesis initializes the capability module's state from a provided genesis
// state.
func InitGenesis(ctx sdk.Context, k keeper.Keeper, genState types.GenesisState) {
	// Set all the blog
	for _, elem := range genState.BlogList {
		k.SetBlog(ctx, elem)
	}

	// Set blog count
	k.SetBlogCount(ctx, genState.BlogCount)
	// this line is used by starport scaffolding # genesis/module/init
	k.SetParams(ctx, genState.Params)
}

// ExportGenesis returns the capability module's exported genesis.
func ExportGenesis(ctx sdk.Context, k keeper.Keeper) *types.GenesisState {
	genesis := types.DefaultGenesis()
	genesis.Params = k.GetParams(ctx)

	genesis.BlogList = k.GetAllBlog(ctx)
	genesis.BlogCount = k.GetBlogCount(ctx)
	// this line is used by starport scaffolding # genesis/module/export

	return genesis
}
