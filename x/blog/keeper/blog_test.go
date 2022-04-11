package keeper_test

import (
	"testing"

	keepertest "github.com/anoochit/mychain/testutil/keeper"
	"github.com/anoochit/mychain/testutil/nullify"
	"github.com/anoochit/mychain/x/blog/keeper"
	"github.com/anoochit/mychain/x/blog/types"
	sdk "github.com/cosmos/cosmos-sdk/types"
	"github.com/stretchr/testify/require"
)

func createNBlog(keeper *keeper.Keeper, ctx sdk.Context, n int) []types.Blog {
	items := make([]types.Blog, n)
	for i := range items {
		items[i].Id = keeper.AppendBlog(ctx, items[i])
	}
	return items
}

func TestBlogGet(t *testing.T) {
	keeper, ctx := keepertest.BlogKeeper(t)
	items := createNBlog(keeper, ctx, 10)
	for _, item := range items {
		got, found := keeper.GetBlog(ctx, item.Id)
		require.True(t, found)
		require.Equal(t,
			nullify.Fill(&item),
			nullify.Fill(&got),
		)
	}
}

func TestBlogRemove(t *testing.T) {
	keeper, ctx := keepertest.BlogKeeper(t)
	items := createNBlog(keeper, ctx, 10)
	for _, item := range items {
		keeper.RemoveBlog(ctx, item.Id)
		_, found := keeper.GetBlog(ctx, item.Id)
		require.False(t, found)
	}
}

func TestBlogGetAll(t *testing.T) {
	keeper, ctx := keepertest.BlogKeeper(t)
	items := createNBlog(keeper, ctx, 10)
	require.ElementsMatch(t,
		nullify.Fill(items),
		nullify.Fill(keeper.GetAllBlog(ctx)),
	)
}

func TestBlogCount(t *testing.T) {
	keeper, ctx := keepertest.BlogKeeper(t)
	items := createNBlog(keeper, ctx, 10)
	count := uint64(len(items))
	require.Equal(t, count, keeper.GetBlogCount(ctx))
}
