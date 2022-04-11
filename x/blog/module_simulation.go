package blog

import (
	"math/rand"

	"github.com/anoochit/mychain/testutil/sample"
	blogsimulation "github.com/anoochit/mychain/x/blog/simulation"
	"github.com/anoochit/mychain/x/blog/types"
	"github.com/cosmos/cosmos-sdk/baseapp"
	simappparams "github.com/cosmos/cosmos-sdk/simapp/params"
	sdk "github.com/cosmos/cosmos-sdk/types"
	"github.com/cosmos/cosmos-sdk/types/module"
	simtypes "github.com/cosmos/cosmos-sdk/types/simulation"
	"github.com/cosmos/cosmos-sdk/x/simulation"
)

// avoid unused import issue
var (
	_ = sample.AccAddress
	_ = blogsimulation.FindAccount
	_ = simappparams.StakePerAccount
	_ = simulation.MsgEntryKind
	_ = baseapp.Paramspace
)

const (
	opWeightMsgCreateBlog = "op_weight_msg_blog"
	// TODO: Determine the simulation weight value
	defaultWeightMsgCreateBlog int = 100

	opWeightMsgUpdateBlog = "op_weight_msg_blog"
	// TODO: Determine the simulation weight value
	defaultWeightMsgUpdateBlog int = 100

	opWeightMsgDeleteBlog = "op_weight_msg_blog"
	// TODO: Determine the simulation weight value
	defaultWeightMsgDeleteBlog int = 100

	// this line is used by starport scaffolding # simapp/module/const
)

// GenerateGenesisState creates a randomized GenState of the module
func (AppModule) GenerateGenesisState(simState *module.SimulationState) {
	accs := make([]string, len(simState.Accounts))
	for i, acc := range simState.Accounts {
		accs[i] = acc.Address.String()
	}
	blogGenesis := types.GenesisState{
		Params: types.DefaultParams(),
		BlogList: []types.Blog{
			{
				Id:      0,
				Creator: sample.AccAddress(),
			},
			{
				Id:      1,
				Creator: sample.AccAddress(),
			},
		},
		BlogCount: 2,
		// this line is used by starport scaffolding # simapp/module/genesisState
	}
	simState.GenState[types.ModuleName] = simState.Cdc.MustMarshalJSON(&blogGenesis)
}

// ProposalContents doesn't return any content functions for governance proposals
func (AppModule) ProposalContents(_ module.SimulationState) []simtypes.WeightedProposalContent {
	return nil
}

// RandomizedParams creates randomized  param changes for the simulator
func (am AppModule) RandomizedParams(_ *rand.Rand) []simtypes.ParamChange {

	return []simtypes.ParamChange{}
}

// RegisterStoreDecoder registers a decoder
func (am AppModule) RegisterStoreDecoder(_ sdk.StoreDecoderRegistry) {}

// WeightedOperations returns the all the gov module operations with their respective weights.
func (am AppModule) WeightedOperations(simState module.SimulationState) []simtypes.WeightedOperation {
	operations := make([]simtypes.WeightedOperation, 0)

	var weightMsgCreateBlog int
	simState.AppParams.GetOrGenerate(simState.Cdc, opWeightMsgCreateBlog, &weightMsgCreateBlog, nil,
		func(_ *rand.Rand) {
			weightMsgCreateBlog = defaultWeightMsgCreateBlog
		},
	)
	operations = append(operations, simulation.NewWeightedOperation(
		weightMsgCreateBlog,
		blogsimulation.SimulateMsgCreateBlog(am.accountKeeper, am.bankKeeper, am.keeper),
	))

	var weightMsgUpdateBlog int
	simState.AppParams.GetOrGenerate(simState.Cdc, opWeightMsgUpdateBlog, &weightMsgUpdateBlog, nil,
		func(_ *rand.Rand) {
			weightMsgUpdateBlog = defaultWeightMsgUpdateBlog
		},
	)
	operations = append(operations, simulation.NewWeightedOperation(
		weightMsgUpdateBlog,
		blogsimulation.SimulateMsgUpdateBlog(am.accountKeeper, am.bankKeeper, am.keeper),
	))

	var weightMsgDeleteBlog int
	simState.AppParams.GetOrGenerate(simState.Cdc, opWeightMsgDeleteBlog, &weightMsgDeleteBlog, nil,
		func(_ *rand.Rand) {
			weightMsgDeleteBlog = defaultWeightMsgDeleteBlog
		},
	)
	operations = append(operations, simulation.NewWeightedOperation(
		weightMsgDeleteBlog,
		blogsimulation.SimulateMsgDeleteBlog(am.accountKeeper, am.bankKeeper, am.keeper),
	))

	// this line is used by starport scaffolding # simapp/module/operation

	return operations
}
