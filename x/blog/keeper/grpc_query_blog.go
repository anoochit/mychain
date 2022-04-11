package keeper

import (
	"context"

	"github.com/anoochit/mychain/x/blog/types"
	"github.com/cosmos/cosmos-sdk/store/prefix"
	sdk "github.com/cosmos/cosmos-sdk/types"
	sdkerrors "github.com/cosmos/cosmos-sdk/types/errors"
	"github.com/cosmos/cosmos-sdk/types/query"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func (k Keeper) BlogAll(c context.Context, req *types.QueryAllBlogRequest) (*types.QueryAllBlogResponse, error) {
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "invalid request")
	}

	var blogs []types.Blog
	ctx := sdk.UnwrapSDKContext(c)

	store := ctx.KVStore(k.storeKey)
	blogStore := prefix.NewStore(store, types.KeyPrefix(types.BlogKey))

	pageRes, err := query.Paginate(blogStore, req.Pagination, func(key []byte, value []byte) error {
		var blog types.Blog
		if err := k.cdc.Unmarshal(value, &blog); err != nil {
			return err
		}

		blogs = append(blogs, blog)
		return nil
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &types.QueryAllBlogResponse{Blog: blogs, Pagination: pageRes}, nil
}

func (k Keeper) Blog(c context.Context, req *types.QueryGetBlogRequest) (*types.QueryGetBlogResponse, error) {
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "invalid request")
	}

	ctx := sdk.UnwrapSDKContext(c)
	blog, found := k.GetBlog(ctx, req.Id)
	if !found {
		return nil, sdkerrors.ErrKeyNotFound
	}

	return &types.QueryGetBlogResponse{Blog: blog}, nil
}
