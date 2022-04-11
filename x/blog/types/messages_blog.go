package types

import (
	sdk "github.com/cosmos/cosmos-sdk/types"
	sdkerrors "github.com/cosmos/cosmos-sdk/types/errors"
)

const (
	TypeMsgCreateBlog = "create_blog"
	TypeMsgUpdateBlog = "update_blog"
	TypeMsgDeleteBlog = "delete_blog"
)

var _ sdk.Msg = &MsgCreateBlog{}

func NewMsgCreateBlog(creator string, title string, body string) *MsgCreateBlog {
	return &MsgCreateBlog{
		Creator: creator,
		Title:   title,
		Body:    body,
	}
}

func (msg *MsgCreateBlog) Route() string {
	return RouterKey
}

func (msg *MsgCreateBlog) Type() string {
	return TypeMsgCreateBlog
}

func (msg *MsgCreateBlog) GetSigners() []sdk.AccAddress {
	creator, err := sdk.AccAddressFromBech32(msg.Creator)
	if err != nil {
		panic(err)
	}
	return []sdk.AccAddress{creator}
}

func (msg *MsgCreateBlog) GetSignBytes() []byte {
	bz := ModuleCdc.MustMarshalJSON(msg)
	return sdk.MustSortJSON(bz)
}

func (msg *MsgCreateBlog) ValidateBasic() error {
	_, err := sdk.AccAddressFromBech32(msg.Creator)
	if err != nil {
		return sdkerrors.Wrapf(sdkerrors.ErrInvalidAddress, "invalid creator address (%s)", err)
	}
	return nil
}

var _ sdk.Msg = &MsgUpdateBlog{}

func NewMsgUpdateBlog(creator string, id uint64, title string, body string) *MsgUpdateBlog {
	return &MsgUpdateBlog{
		Id:      id,
		Creator: creator,
		Title:   title,
		Body:    body,
	}
}

func (msg *MsgUpdateBlog) Route() string {
	return RouterKey
}

func (msg *MsgUpdateBlog) Type() string {
	return TypeMsgUpdateBlog
}

func (msg *MsgUpdateBlog) GetSigners() []sdk.AccAddress {
	creator, err := sdk.AccAddressFromBech32(msg.Creator)
	if err != nil {
		panic(err)
	}
	return []sdk.AccAddress{creator}
}

func (msg *MsgUpdateBlog) GetSignBytes() []byte {
	bz := ModuleCdc.MustMarshalJSON(msg)
	return sdk.MustSortJSON(bz)
}

func (msg *MsgUpdateBlog) ValidateBasic() error {
	_, err := sdk.AccAddressFromBech32(msg.Creator)
	if err != nil {
		return sdkerrors.Wrapf(sdkerrors.ErrInvalidAddress, "invalid creator address (%s)", err)
	}
	return nil
}

var _ sdk.Msg = &MsgDeleteBlog{}

func NewMsgDeleteBlog(creator string, id uint64) *MsgDeleteBlog {
	return &MsgDeleteBlog{
		Id:      id,
		Creator: creator,
	}
}
func (msg *MsgDeleteBlog) Route() string {
	return RouterKey
}

func (msg *MsgDeleteBlog) Type() string {
	return TypeMsgDeleteBlog
}

func (msg *MsgDeleteBlog) GetSigners() []sdk.AccAddress {
	creator, err := sdk.AccAddressFromBech32(msg.Creator)
	if err != nil {
		panic(err)
	}
	return []sdk.AccAddress{creator}
}

func (msg *MsgDeleteBlog) GetSignBytes() []byte {
	bz := ModuleCdc.MustMarshalJSON(msg)
	return sdk.MustSortJSON(bz)
}

func (msg *MsgDeleteBlog) ValidateBasic() error {
	_, err := sdk.AccAddressFromBech32(msg.Creator)
	if err != nil {
		return sdkerrors.Wrapf(sdkerrors.ErrInvalidAddress, "invalid creator address (%s)", err)
	}
	return nil
}
