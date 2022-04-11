/* eslint-disable */
import { Reader, util, configure, Writer } from "protobufjs/minimal";
import * as Long from "long";

export const protobufPackage = "anoochit.mychain.blog";

export interface MsgCreateBlog {
  creator: string;
  title: string;
  body: string;
}

export interface MsgCreateBlogResponse {
  id: number;
}

export interface MsgUpdateBlog {
  creator: string;
  id: number;
  title: string;
  body: string;
}

export interface MsgUpdateBlogResponse {}

export interface MsgDeleteBlog {
  creator: string;
  id: number;
}

export interface MsgDeleteBlogResponse {}

const baseMsgCreateBlog: object = { creator: "", title: "", body: "" };

export const MsgCreateBlog = {
  encode(message: MsgCreateBlog, writer: Writer = Writer.create()): Writer {
    if (message.creator !== "") {
      writer.uint32(10).string(message.creator);
    }
    if (message.title !== "") {
      writer.uint32(18).string(message.title);
    }
    if (message.body !== "") {
      writer.uint32(26).string(message.body);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): MsgCreateBlog {
    const reader = input instanceof Uint8Array ? new Reader(input) : input;
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseMsgCreateBlog } as MsgCreateBlog;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.creator = reader.string();
          break;
        case 2:
          message.title = reader.string();
          break;
        case 3:
          message.body = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): MsgCreateBlog {
    const message = { ...baseMsgCreateBlog } as MsgCreateBlog;
    if (object.creator !== undefined && object.creator !== null) {
      message.creator = String(object.creator);
    } else {
      message.creator = "";
    }
    if (object.title !== undefined && object.title !== null) {
      message.title = String(object.title);
    } else {
      message.title = "";
    }
    if (object.body !== undefined && object.body !== null) {
      message.body = String(object.body);
    } else {
      message.body = "";
    }
    return message;
  },

  toJSON(message: MsgCreateBlog): unknown {
    const obj: any = {};
    message.creator !== undefined && (obj.creator = message.creator);
    message.title !== undefined && (obj.title = message.title);
    message.body !== undefined && (obj.body = message.body);
    return obj;
  },

  fromPartial(object: DeepPartial<MsgCreateBlog>): MsgCreateBlog {
    const message = { ...baseMsgCreateBlog } as MsgCreateBlog;
    if (object.creator !== undefined && object.creator !== null) {
      message.creator = object.creator;
    } else {
      message.creator = "";
    }
    if (object.title !== undefined && object.title !== null) {
      message.title = object.title;
    } else {
      message.title = "";
    }
    if (object.body !== undefined && object.body !== null) {
      message.body = object.body;
    } else {
      message.body = "";
    }
    return message;
  },
};

const baseMsgCreateBlogResponse: object = { id: 0 };

export const MsgCreateBlogResponse = {
  encode(
    message: MsgCreateBlogResponse,
    writer: Writer = Writer.create()
  ): Writer {
    if (message.id !== 0) {
      writer.uint32(8).uint64(message.id);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): MsgCreateBlogResponse {
    const reader = input instanceof Uint8Array ? new Reader(input) : input;
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseMsgCreateBlogResponse } as MsgCreateBlogResponse;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = longToNumber(reader.uint64() as Long);
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): MsgCreateBlogResponse {
    const message = { ...baseMsgCreateBlogResponse } as MsgCreateBlogResponse;
    if (object.id !== undefined && object.id !== null) {
      message.id = Number(object.id);
    } else {
      message.id = 0;
    }
    return message;
  },

  toJSON(message: MsgCreateBlogResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  fromPartial(
    object: DeepPartial<MsgCreateBlogResponse>
  ): MsgCreateBlogResponse {
    const message = { ...baseMsgCreateBlogResponse } as MsgCreateBlogResponse;
    if (object.id !== undefined && object.id !== null) {
      message.id = object.id;
    } else {
      message.id = 0;
    }
    return message;
  },
};

const baseMsgUpdateBlog: object = { creator: "", id: 0, title: "", body: "" };

export const MsgUpdateBlog = {
  encode(message: MsgUpdateBlog, writer: Writer = Writer.create()): Writer {
    if (message.creator !== "") {
      writer.uint32(10).string(message.creator);
    }
    if (message.id !== 0) {
      writer.uint32(16).uint64(message.id);
    }
    if (message.title !== "") {
      writer.uint32(26).string(message.title);
    }
    if (message.body !== "") {
      writer.uint32(34).string(message.body);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): MsgUpdateBlog {
    const reader = input instanceof Uint8Array ? new Reader(input) : input;
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseMsgUpdateBlog } as MsgUpdateBlog;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.creator = reader.string();
          break;
        case 2:
          message.id = longToNumber(reader.uint64() as Long);
          break;
        case 3:
          message.title = reader.string();
          break;
        case 4:
          message.body = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): MsgUpdateBlog {
    const message = { ...baseMsgUpdateBlog } as MsgUpdateBlog;
    if (object.creator !== undefined && object.creator !== null) {
      message.creator = String(object.creator);
    } else {
      message.creator = "";
    }
    if (object.id !== undefined && object.id !== null) {
      message.id = Number(object.id);
    } else {
      message.id = 0;
    }
    if (object.title !== undefined && object.title !== null) {
      message.title = String(object.title);
    } else {
      message.title = "";
    }
    if (object.body !== undefined && object.body !== null) {
      message.body = String(object.body);
    } else {
      message.body = "";
    }
    return message;
  },

  toJSON(message: MsgUpdateBlog): unknown {
    const obj: any = {};
    message.creator !== undefined && (obj.creator = message.creator);
    message.id !== undefined && (obj.id = message.id);
    message.title !== undefined && (obj.title = message.title);
    message.body !== undefined && (obj.body = message.body);
    return obj;
  },

  fromPartial(object: DeepPartial<MsgUpdateBlog>): MsgUpdateBlog {
    const message = { ...baseMsgUpdateBlog } as MsgUpdateBlog;
    if (object.creator !== undefined && object.creator !== null) {
      message.creator = object.creator;
    } else {
      message.creator = "";
    }
    if (object.id !== undefined && object.id !== null) {
      message.id = object.id;
    } else {
      message.id = 0;
    }
    if (object.title !== undefined && object.title !== null) {
      message.title = object.title;
    } else {
      message.title = "";
    }
    if (object.body !== undefined && object.body !== null) {
      message.body = object.body;
    } else {
      message.body = "";
    }
    return message;
  },
};

const baseMsgUpdateBlogResponse: object = {};

export const MsgUpdateBlogResponse = {
  encode(_: MsgUpdateBlogResponse, writer: Writer = Writer.create()): Writer {
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): MsgUpdateBlogResponse {
    const reader = input instanceof Uint8Array ? new Reader(input) : input;
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseMsgUpdateBlogResponse } as MsgUpdateBlogResponse;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(_: any): MsgUpdateBlogResponse {
    const message = { ...baseMsgUpdateBlogResponse } as MsgUpdateBlogResponse;
    return message;
  },

  toJSON(_: MsgUpdateBlogResponse): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(_: DeepPartial<MsgUpdateBlogResponse>): MsgUpdateBlogResponse {
    const message = { ...baseMsgUpdateBlogResponse } as MsgUpdateBlogResponse;
    return message;
  },
};

const baseMsgDeleteBlog: object = { creator: "", id: 0 };

export const MsgDeleteBlog = {
  encode(message: MsgDeleteBlog, writer: Writer = Writer.create()): Writer {
    if (message.creator !== "") {
      writer.uint32(10).string(message.creator);
    }
    if (message.id !== 0) {
      writer.uint32(16).uint64(message.id);
    }
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): MsgDeleteBlog {
    const reader = input instanceof Uint8Array ? new Reader(input) : input;
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseMsgDeleteBlog } as MsgDeleteBlog;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.creator = reader.string();
          break;
        case 2:
          message.id = longToNumber(reader.uint64() as Long);
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): MsgDeleteBlog {
    const message = { ...baseMsgDeleteBlog } as MsgDeleteBlog;
    if (object.creator !== undefined && object.creator !== null) {
      message.creator = String(object.creator);
    } else {
      message.creator = "";
    }
    if (object.id !== undefined && object.id !== null) {
      message.id = Number(object.id);
    } else {
      message.id = 0;
    }
    return message;
  },

  toJSON(message: MsgDeleteBlog): unknown {
    const obj: any = {};
    message.creator !== undefined && (obj.creator = message.creator);
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  fromPartial(object: DeepPartial<MsgDeleteBlog>): MsgDeleteBlog {
    const message = { ...baseMsgDeleteBlog } as MsgDeleteBlog;
    if (object.creator !== undefined && object.creator !== null) {
      message.creator = object.creator;
    } else {
      message.creator = "";
    }
    if (object.id !== undefined && object.id !== null) {
      message.id = object.id;
    } else {
      message.id = 0;
    }
    return message;
  },
};

const baseMsgDeleteBlogResponse: object = {};

export const MsgDeleteBlogResponse = {
  encode(_: MsgDeleteBlogResponse, writer: Writer = Writer.create()): Writer {
    return writer;
  },

  decode(input: Reader | Uint8Array, length?: number): MsgDeleteBlogResponse {
    const reader = input instanceof Uint8Array ? new Reader(input) : input;
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = { ...baseMsgDeleteBlogResponse } as MsgDeleteBlogResponse;
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(_: any): MsgDeleteBlogResponse {
    const message = { ...baseMsgDeleteBlogResponse } as MsgDeleteBlogResponse;
    return message;
  },

  toJSON(_: MsgDeleteBlogResponse): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(_: DeepPartial<MsgDeleteBlogResponse>): MsgDeleteBlogResponse {
    const message = { ...baseMsgDeleteBlogResponse } as MsgDeleteBlogResponse;
    return message;
  },
};

/** Msg defines the Msg service. */
export interface Msg {
  CreateBlog(request: MsgCreateBlog): Promise<MsgCreateBlogResponse>;
  UpdateBlog(request: MsgUpdateBlog): Promise<MsgUpdateBlogResponse>;
  /** this line is used by starport scaffolding # proto/tx/rpc */
  DeleteBlog(request: MsgDeleteBlog): Promise<MsgDeleteBlogResponse>;
}

export class MsgClientImpl implements Msg {
  private readonly rpc: Rpc;
  constructor(rpc: Rpc) {
    this.rpc = rpc;
  }
  CreateBlog(request: MsgCreateBlog): Promise<MsgCreateBlogResponse> {
    const data = MsgCreateBlog.encode(request).finish();
    const promise = this.rpc.request(
      "anoochit.mychain.blog.Msg",
      "CreateBlog",
      data
    );
    return promise.then((data) =>
      MsgCreateBlogResponse.decode(new Reader(data))
    );
  }

  UpdateBlog(request: MsgUpdateBlog): Promise<MsgUpdateBlogResponse> {
    const data = MsgUpdateBlog.encode(request).finish();
    const promise = this.rpc.request(
      "anoochit.mychain.blog.Msg",
      "UpdateBlog",
      data
    );
    return promise.then((data) =>
      MsgUpdateBlogResponse.decode(new Reader(data))
    );
  }

  DeleteBlog(request: MsgDeleteBlog): Promise<MsgDeleteBlogResponse> {
    const data = MsgDeleteBlog.encode(request).finish();
    const promise = this.rpc.request(
      "anoochit.mychain.blog.Msg",
      "DeleteBlog",
      data
    );
    return promise.then((data) =>
      MsgDeleteBlogResponse.decode(new Reader(data))
    );
  }
}

interface Rpc {
  request(
    service: string,
    method: string,
    data: Uint8Array
  ): Promise<Uint8Array>;
}

declare var self: any | undefined;
declare var window: any | undefined;
var globalThis: any = (() => {
  if (typeof globalThis !== "undefined") return globalThis;
  if (typeof self !== "undefined") return self;
  if (typeof window !== "undefined") return window;
  if (typeof global !== "undefined") return global;
  throw "Unable to locate global object";
})();

type Builtin = Date | Function | Uint8Array | string | number | undefined;
export type DeepPartial<T> = T extends Builtin
  ? T
  : T extends Array<infer U>
  ? Array<DeepPartial<U>>
  : T extends ReadonlyArray<infer U>
  ? ReadonlyArray<DeepPartial<U>>
  : T extends {}
  ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

function longToNumber(long: Long): number {
  if (long.gt(Number.MAX_SAFE_INTEGER)) {
    throw new globalThis.Error("Value is larger than Number.MAX_SAFE_INTEGER");
  }
  return long.toNumber();
}

if (util.Long !== Long) {
  util.Long = Long as any;
  configure();
}
