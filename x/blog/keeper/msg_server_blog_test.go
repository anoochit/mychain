package keeper_test

import (
	"testing"

	sdkerrors "github.com/cosmos/cosmos-sdk/types/errors"
	"github.com/stretchr/testify/require"

	"github.com/anoochit/mychain/x/blog/types"
)

func TestBlogMsgServerCreate(t *testing.T) {
	srv, ctx := setupMsgServer(t)
	creator := "A"
	for i := 0; i < 5; i++ {
		resp, err := srv.CreateBlog(ctx, &types.MsgCreateBlog{Creator: creator})
		require.NoError(t, err)
		require.Equal(t, i, int(resp.Id))
	}
}

func TestBlogMsgServerUpdate(t *testing.T) {
	creator := "A"

	for _, tc := range []struct {
		desc    string
		request *types.MsgUpdateBlog
		err     error
	}{
		{
			desc:    "Completed",
			request: &types.MsgUpdateBlog{Creator: creator},
		},
		{
			desc:    "Unauthorized",
			request: &types.MsgUpdateBlog{Creator: "B"},
			err:     sdkerrors.ErrUnauthorized,
		},
		{
			desc:    "Unauthorized",
			request: &types.MsgUpdateBlog{Creator: creator, Id: 10},
			err:     sdkerrors.ErrKeyNotFound,
		},
	} {
		t.Run(tc.desc, func(t *testing.T) {
			srv, ctx := setupMsgServer(t)
			_, err := srv.CreateBlog(ctx, &types.MsgCreateBlog{Creator: creator})
			require.NoError(t, err)

			_, err = srv.UpdateBlog(ctx, tc.request)
			if tc.err != nil {
				require.ErrorIs(t, err, tc.err)
			} else {
				require.NoError(t, err)
			}
		})
	}
}

func TestBlogMsgServerDelete(t *testing.T) {
	creator := "A"

	for _, tc := range []struct {
		desc    string
		request *types.MsgDeleteBlog
		err     error
	}{
		{
			desc:    "Completed",
			request: &types.MsgDeleteBlog{Creator: creator},
		},
		{
			desc:    "Unauthorized",
			request: &types.MsgDeleteBlog{Creator: "B"},
			err:     sdkerrors.ErrUnauthorized,
		},
		{
			desc:    "KeyNotFound",
			request: &types.MsgDeleteBlog{Creator: creator, Id: 10},
			err:     sdkerrors.ErrKeyNotFound,
		},
	} {
		t.Run(tc.desc, func(t *testing.T) {
			srv, ctx := setupMsgServer(t)

			_, err := srv.CreateBlog(ctx, &types.MsgCreateBlog{Creator: creator})
			require.NoError(t, err)
			_, err = srv.DeleteBlog(ctx, tc.request)
			if tc.err != nil {
				require.ErrorIs(t, err, tc.err)
			} else {
				require.NoError(t, err)
			}
		})
	}
}
