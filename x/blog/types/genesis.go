package types

import (
	"fmt"
)

// DefaultIndex is the default capability global index
const DefaultIndex uint64 = 1

// DefaultGenesis returns the default Capability genesis state
func DefaultGenesis() *GenesisState {
	return &GenesisState{
		BlogList: []Blog{},
		// this line is used by starport scaffolding # genesis/types/default
		Params: DefaultParams(),
	}
}

// Validate performs basic genesis state validation returning an error upon any
// failure.
func (gs GenesisState) Validate() error {
	// Check for duplicated ID in blog
	blogIdMap := make(map[uint64]bool)
	blogCount := gs.GetBlogCount()
	for _, elem := range gs.BlogList {
		if _, ok := blogIdMap[elem.Id]; ok {
			return fmt.Errorf("duplicated id for blog")
		}
		if elem.Id >= blogCount {
			return fmt.Errorf("blog id should be lower or equal than the last id")
		}
		blogIdMap[elem.Id] = true
	}
	// this line is used by starport scaffolding # genesis/types/validate

	return gs.Params.Validate()
}
