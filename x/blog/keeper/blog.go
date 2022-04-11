package keeper

import (
	"encoding/binary"

	"github.com/anoochit/mychain/x/blog/types"
	"github.com/cosmos/cosmos-sdk/store/prefix"
	sdk "github.com/cosmos/cosmos-sdk/types"
)

// GetBlogCount get the total number of blog
func (k Keeper) GetBlogCount(ctx sdk.Context) uint64 {
	store := prefix.NewStore(ctx.KVStore(k.storeKey), []byte{})
	byteKey := types.KeyPrefix(types.BlogCountKey)
	bz := store.Get(byteKey)

	// Count doesn't exist: no element
	if bz == nil {
		return 0
	}

	// Parse bytes
	return binary.BigEndian.Uint64(bz)
}

// SetBlogCount set the total number of blog
func (k Keeper) SetBlogCount(ctx sdk.Context, count uint64) {
	store := prefix.NewStore(ctx.KVStore(k.storeKey), []byte{})
	byteKey := types.KeyPrefix(types.BlogCountKey)
	bz := make([]byte, 8)
	binary.BigEndian.PutUint64(bz, count)
	store.Set(byteKey, bz)
}

// AppendBlog appends a blog in the store with a new id and update the count
func (k Keeper) AppendBlog(
	ctx sdk.Context,
	blog types.Blog,
) uint64 {
	// Create the blog
	count := k.GetBlogCount(ctx)

	// Set the ID of the appended value
	blog.Id = count

	store := prefix.NewStore(ctx.KVStore(k.storeKey), types.KeyPrefix(types.BlogKey))
	appendedValue := k.cdc.MustMarshal(&blog)
	store.Set(GetBlogIDBytes(blog.Id), appendedValue)

	// Update blog count
	k.SetBlogCount(ctx, count+1)

	return count
}

// SetBlog set a specific blog in the store
func (k Keeper) SetBlog(ctx sdk.Context, blog types.Blog) {
	store := prefix.NewStore(ctx.KVStore(k.storeKey), types.KeyPrefix(types.BlogKey))
	b := k.cdc.MustMarshal(&blog)
	store.Set(GetBlogIDBytes(blog.Id), b)
}

// GetBlog returns a blog from its id
func (k Keeper) GetBlog(ctx sdk.Context, id uint64) (val types.Blog, found bool) {
	store := prefix.NewStore(ctx.KVStore(k.storeKey), types.KeyPrefix(types.BlogKey))
	b := store.Get(GetBlogIDBytes(id))
	if b == nil {
		return val, false
	}
	k.cdc.MustUnmarshal(b, &val)
	return val, true
}

// RemoveBlog removes a blog from the store
func (k Keeper) RemoveBlog(ctx sdk.Context, id uint64) {
	store := prefix.NewStore(ctx.KVStore(k.storeKey), types.KeyPrefix(types.BlogKey))
	store.Delete(GetBlogIDBytes(id))
}

// GetAllBlog returns all blog
func (k Keeper) GetAllBlog(ctx sdk.Context) (list []types.Blog) {
	store := prefix.NewStore(ctx.KVStore(k.storeKey), types.KeyPrefix(types.BlogKey))
	iterator := sdk.KVStorePrefixIterator(store, []byte{})

	defer iterator.Close()

	for ; iterator.Valid(); iterator.Next() {
		var val types.Blog
		k.cdc.MustUnmarshal(iterator.Value(), &val)
		list = append(list, val)
	}

	return
}

// GetBlogIDBytes returns the byte representation of the ID
func GetBlogIDBytes(id uint64) []byte {
	bz := make([]byte, 8)
	binary.BigEndian.PutUint64(bz, id)
	return bz
}

// GetBlogIDFromBytes returns ID in uint64 format from a byte array
func GetBlogIDFromBytes(bz []byte) uint64 {
	return binary.BigEndian.Uint64(bz)
}
