import 'package:cosmos_utils/cosmos_utils.dart';
import 'package:mobx/mobx.dart';
import 'package:starport_template/app_config.dart';
import 'package:starport_template/utils/blog_sender.dart';
import 'package:transaction_signing_gateway/alan/alan_account_derivation_info.dart';
import 'package:transaction_signing_gateway/transaction_signing_gateway.dart';

// TODO: create custom blog store

class BlogStore {
  BlogStore(
    this._transactionSigningGateway,
    this.appConfig,
  );

  static const chainId = 'my_starport_chain';
  final TransactionSigningGateway _transactionSigningGateway;

  final AppConfig appConfig;

  final Observable<bool> _isSendMoneyLoading = Observable(false);
  final Observable<bool> _isSendMoneyError = Observable(false);

  bool get isSendMoneyLoading => _isSendMoneyLoading.value;
  set isSendMoneyLoading(bool val) => Action(() => _isSendMoneyLoading.value = val)();

  bool get isSendMoneyError => _isSendMoneyError.value;
  set isSendMoneyError(bool val) => Action(() => _isSendMoneyError.value = val)();

  Future<void> sendBlogPost({
    required AccountPublicInfo info,
    required String password,
  }) async {
    isSendMoneyLoading = true;
    isSendMoneyError = false;
    try {
      await BlogSender(_transactionSigningGateway).blogPost(
        info,
        password,
      );
      //await getBalances(selectedAccount.publicAddress);
    } catch (ex, stack) {
      logError(ex, stack);
      isSendMoneyError = true;
    }
    isSendMoneyLoading = false;
  }
}
