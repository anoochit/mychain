// THIS FILE IS GENERATED AUTOMATICALLY. DO NOT MODIFY.

import { StdFee } from "@cosmjs/launchpad";
import { SigningStargateClient } from "@cosmjs/stargate";
import { Registry, OfflineSigner, EncodeObject, DirectSecp256k1HdWallet } from "@cosmjs/proto-signing";
import { Api } from "./rest";
import { MsgUpdateBlog } from "./types/blog/tx";
import { MsgCreateBlog } from "./types/blog/tx";
import { MsgDeleteBlog } from "./types/blog/tx";


const types = [
  ["/anoochit.mychain.blog.MsgUpdateBlog", MsgUpdateBlog],
  ["/anoochit.mychain.blog.MsgCreateBlog", MsgCreateBlog],
  ["/anoochit.mychain.blog.MsgDeleteBlog", MsgDeleteBlog],
  
];
export const MissingWalletError = new Error("wallet is required");

export const registry = new Registry(<any>types);

const defaultFee = {
  amount: [],
  gas: "200000",
};

interface TxClientOptions {
  addr: string
}

interface SignAndBroadcastOptions {
  fee: StdFee,
  memo?: string
}

const txClient = async (wallet: OfflineSigner, { addr: addr }: TxClientOptions = { addr: "http://localhost:26657" }) => {
  if (!wallet) throw MissingWalletError;
  let client;
  if (addr) {
    client = await SigningStargateClient.connectWithSigner(addr, wallet, { registry });
  }else{
    client = await SigningStargateClient.offline( wallet, { registry });
  }
  const { address } = (await wallet.getAccounts())[0];

  return {
    signAndBroadcast: (msgs: EncodeObject[], { fee, memo }: SignAndBroadcastOptions = {fee: defaultFee, memo: ""}) => client.signAndBroadcast(address, msgs, fee,memo),
    msgUpdateBlog: (data: MsgUpdateBlog): EncodeObject => ({ typeUrl: "/anoochit.mychain.blog.MsgUpdateBlog", value: MsgUpdateBlog.fromPartial( data ) }),
    msgCreateBlog: (data: MsgCreateBlog): EncodeObject => ({ typeUrl: "/anoochit.mychain.blog.MsgCreateBlog", value: MsgCreateBlog.fromPartial( data ) }),
    msgDeleteBlog: (data: MsgDeleteBlog): EncodeObject => ({ typeUrl: "/anoochit.mychain.blog.MsgDeleteBlog", value: MsgDeleteBlog.fromPartial( data ) }),
    
  };
};

interface QueryClientOptions {
  addr: string
}

const queryClient = async ({ addr: addr }: QueryClientOptions = { addr: "http://localhost:1317" }) => {
  return new Api({ baseUrl: addr });
};

export {
  txClient,
  queryClient,
};
