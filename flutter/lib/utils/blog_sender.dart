// ignore_for_file: always_use_package_imports
import 'package:alan/alan.dart' as alan;
import 'package:starport_template/generated/anoochit.mychain.blog/module/export.dart' as blog;
import 'package:cosmos_utils/cosmos_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:transaction_signing_gateway/model/account_lookup_key.dart';
import 'package:transaction_signing_gateway/transaction_signing_gateway.dart';

class BlogSender {
  BlogSender(this.transactionSigningGateway);

  TransactionSigningGateway transactionSigningGateway;

  Future<void> blogPost(
    AccountPublicInfo info,
    //Balance balance,
    //String toAddress,
    String password,
  ) async {
    // final message = bank.MsgSend.create()
    //   ..fromAddress = info.publicAddress
    //   ..toAddress = toAddress;

    final message = blog.MsgCreateBlog()
      ..body = 'This is my 1st blog post from mobile'
      ..title = '1st mobile blog post'
      ..creator = info.publicAddress;

    // message.amount.add(
    //   alan.Coin.create()
    //     ..denom = balance.denom.text
    //     ..amount = balance.amount.value.toString(),
    // );

    final unsignedTransaction = UnsignedAlanTransaction(messages: [message]);

    final accountLookupKey = AccountLookupKey(
      accountId: info.accountId,
      chainId: info.chainId,
      password: password,
    );

    final result = await transactionSigningGateway
        .signTransaction(
          transaction: unsignedTransaction,
          accountLookupKey: accountLookupKey,
        )
        .mapError<dynamic>((error) => throw error)
        .flatMap(
          (signed) => transactionSigningGateway.broadcastTransaction(
            accountLookupKey: accountLookupKey,
            transaction: signed,
          ),
        );
    result.fold(
      (fail) => throw fail as Object,
      (tx) => debugPrint('new TX hash: $tx'),
    );
  }
}
