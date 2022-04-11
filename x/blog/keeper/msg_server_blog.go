package keeper

import (
	"context"
	"fmt"

	"github.com/anoochit/mychain/x/blog/types"
	sdk "github.com/cosmos/cosmos-sdk/types"
	sdkerrors "github.com/cosmos/cosmos-sdk/types/errors"
)

func (k msgServer) CreateBlog(goCtx context.Context, msg *types.MsgCreateBlog) (*types.MsgCreateBlogResponse, error) {
	ctx := sdk.UnwrapSDKContext(goCtx)

	var blog = types.Blog{
		Creator: msg.Creator,
		Title:   msg.Title,
		Body:    msg.Body,
	}

	id := k.AppendBlog(
		ctx,
		blog,
	)

	return &types.MsgCreateBlogResponse{
		Id: id,
	}, nil
}

func (k msgServer) UpdateBlog(goCtx context.Context, msg *types.MsgUpdateBlog) (*types.MsgUpdateBlogResponse, error) {
	ctx := sdk.UnwrapSDKContext(goCtx)

	var blog = types.Blog{
		Creator: msg.Creator,
		Id:      msg.Id,
		Title:   msg.Title,
		Body:    msg.Body,
	}

	// Checks that the element exists
	val, found := k.GetBlog(ctx, msg.Id)
	if !found {
		return nil, sdkerrors.Wrap(sdkerrors.ErrKeyNotFound, fmt.Sprintf("key %d doesn't exist", msg.Id))
	}

	// Checks if the msg creator is the same as the current owner
	if msg.Creator != val.Creator {
		return nil, sdkerrors.Wrap(sdkerrors.ErrUnauthorized, "incorrect owner")
	}

	k.SetBlog(ctx, blog)

	return &types.MsgUpdateBlogResponse{}, nil
}

func (k msgServer) DeleteBlog(goCtx context.Context, msg *types.MsgDeleteBlog) (*types.MsgDeleteBlogResponse, error) {
	ctx := sdk.UnwrapSDKContext(goCtx)

	// Checks that the element exists
	val, found := k.GetBlog(ctx, msg.Id)
	if !found {
		return nil, sdkerrors.Wrap(sdkerrors.ErrKeyNotFound, fmt.Sprintf("key %d doesn't exist", msg.Id))
	}

	// Checks if the msg creator is the same as the current owner
	if msg.Creator != val.Creator {
		return nil, sdkerrors.Wrap(sdkerrors.ErrUnauthorized, "incorrect owner")
	}

	k.RemoveBlog(ctx, msg.Id)

	return &types.MsgDeleteBlogResponse{}, nil
}
