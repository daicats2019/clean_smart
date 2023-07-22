import 'dart:async';
import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:com.qksoft.sharefilemess/purchase_page/widgets/purchase_case_item.dart';
import 'package:com.qksoft.sharefilemess/purchase_page/widgets/supcription_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
// ignore: depend_on_referenced_packages
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:page_transition/page_transition.dart';

import '../Component/text_style/text_styles.dart';
import '../generated/l10n.dart';
import '../model/app_image.dart';
import '../modules/browser_page/browser_page.dart';
import '../utils/color.dart';
import '../utils/component/image_widget/svg_widget.dart';


const String _weekId = 'remove_ads_weekly';
const String _monthId = 'remove_ads_monthly';
const String _yearId = 'remove_ads_yearly';
const List<String> _kProductIds = <String>[
  _weekId,
  _monthId,
  _yearId,
  'yolobook_sub_01',
  'yolobook_sub_02',
  'yolobook_sub_03',
  'yolobook_sub_04',
  'yolobook_sub_05',
  'yolobook_sub_06',
  'yolobook_sub_07',
  'yolobook_sub_08',
  'yolobook_sub_09',
  'yolobook_sub_10'
];

class PurchaseV2Page extends StatefulWidget {
  const PurchaseV2Page({super.key});

  @override
  State<PurchaseV2Page> createState() => _PurchaseV2PageState();
}

class _PurchaseV2PageState extends State<PurchaseV2Page> {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<ProductDetails> _products = <ProductDetails>[];
  List<PurchaseDetails> _purchases = <PurchaseDetails>[];
  String? _queryProductError;
  String? _selectedProductId;

  @override
  void initState() {
    final Stream<List<PurchaseDetails>> purchaseUpdated =
        _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen((purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      _subscription.cancel();
    }, onError: (error) {
      // handle error here.
    });
    initStoreInfo();
    super.initState();
  }

  @override
  void dispose() {
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          _inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      iosPlatformAddition.setDelegate(null);
    }
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isError = _queryProductError != null;

    if (isError) {
      return Container(
        color: AppColor.background,
        child: Center(
          child: Text(
            S.current.smthw,
            style: AppTextStyle.regular14.copyWith(color: AppColor.white),
          ),
        ),
      );
    }

    final List<Widget> productList = <Widget>[];

    if (_products.isEmpty) {
      productList.add(const SizedBox(
        height: 20,
      ));
    } else {
      productList.addAll(
        _products.mapIndexed(
          (index, product) => PurchaseCaseItem(
              value: product.price,
              duration: product.parseDuration(),
              onPressed: () => handlePurchaseButtonAsync(product),
              isSelected: _selectedProductId == product.id),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.transparent,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(16).copyWith(bottom: 0),
              child: const SvgWidget(svgPath: SvgPath.close),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16).copyWith(top: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.joinP,
              style: AppTextStyle.regular30.copyWith(color: AppColor.green),
            ),
            const SizedBox(
              height: 44,
            ),
            Supcription(svgPath: SvgPath.unlock, title: S.current.unlock),
            const SizedBox(
              height: 20,
            ),
            Supcription(svgPath: SvgPath.sub3, title: S.current.noAds),
            const SizedBox(
              height: 44,
            ),
            Center(
              child: Text(
                _getSelectedProductDetails()?.parseDescription() ?? "",
                style:
                    AppTextStyle.regular14.copyWith(color: AppColor.unselected),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: productList,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              S.current.paymentWill,
              style: AppTextStyle.regular11.copyWith(
                fontSize: 10,
                color: AppColor.unselected,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: handleTermButton,
                  child: Text(
                    S.current.term,
                    style: AppTextStyle.regular13.copyWith(
                        color: AppColor.white,
                        decoration: TextDecoration.underline),
                  ),
                ),
                GestureDetector(
                  onTap: handleRestoreButtonAsync,
                  child: Text(
                    S.current.restore,
                    style: AppTextStyle.regular13.copyWith(
                        color: AppColor.white,
                        decoration: TextDecoration.underline),
                  ),
                ),
                GestureDetector(
                  onTap: handlePrivacyPolicyButton,
                  child: Text(
                    S.current.privacyPolicy,
                    style: AppTextStyle.regular13.copyWith(
                        color: AppColor.white,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> initStoreInfo() async {
    final bool isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      setState(() {
        _products = <ProductDetails>[];
        _purchases = <PurchaseDetails>[];
      });
      return;
    }

    if (Platform.isIOS) {
      final iosPlatformAddition = _inAppPurchase
          .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      await iosPlatformAddition.setDelegate(ExamplePaymentQueueDelegate());
    }

    final ProductDetailsResponse productDetailResponse =
        await _inAppPurchase.queryProductDetails(_kProductIds.toSet());

    if (productDetailResponse.error != null) {
      setState(() {
        _queryProductError = productDetailResponse.error?.message;
        _products = productDetailResponse.productDetails;
        _purchases = <PurchaseDetails>[];
        _selectedProductId = _products.firstOrNull?.id;
      });
      return;
    }

    if (productDetailResponse.productDetails.isEmpty) {
      setState(() {
        _queryProductError = null;
        _products = productDetailResponse.productDetails;
        _purchases = <PurchaseDetails>[];
        _selectedProductId = _products.firstOrNull?.id;
      });
      return;
    }

    setState(() {
      _products = productDetailResponse.productDetails;
      _selectedProductId = _products.firstOrNull?.id;
    });
  }

  Future<void> _listenToPurchaseUpdated(
      List<PurchaseDetails> purchaseDetailsList) async {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      switch (purchaseDetails.status) {
        case PurchaseStatus.pending:
          EasyLoading.show();
          break;
        case PurchaseStatus.purchased:
          if (EasyLoading.isShow) {
            EasyLoading.dismiss();
          }
          // await locator<AppDatabase>().setPastProduct(Product(
          //   expireDate: DateTime.now().add(Duration(
          //     days: 3 +
          //         ((purchaseDetails.productID == _weekId)
          //             ? 7
          //             : purchaseDetails.productID == _monthId
          //                 ? 30
          //                 : 365),
          //   )),
          //   productID: purchaseDetails.productID,
          // ));
          EasyLoading.showSuccess(S.current.yourAreP);
          break;
        case PurchaseStatus.error:
          if (EasyLoading.isShow) {
            EasyLoading.dismiss();
          }
          EasyLoading.showError(S.current.smthw);
          break;
        case PurchaseStatus.restored:
          // await locator<AppDatabase>().setPastProduct(Product(
          //   expireDate: DateTime.fromMillisecondsSinceEpoch(
          //           int.parse(purchaseDetails.transactionDate.toString()))
          //       .add(Duration(
          //     days: 3 +
          //         ((purchaseDetails.productID == _weekId)
          //             ? 7
          //             : purchaseDetails.productID == _monthId
          //                 ? 30
          //                 : 365),
          //   )),
          //   productID: purchaseDetails.productID,
          // ));
          EasyLoading.showSuccess(S.current.restoreYouPlan);
          break;
        case PurchaseStatus.canceled:
          // TODO: Handle this case.
          break;
      }

      if (purchaseDetails.pendingCompletePurchase) {
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
    }
  }

  Future<void> deliverProduct(PurchaseDetails purchaseDetails) async {
    setState(() {
      _purchases.add(purchaseDetails);
    });
  }

  ProductDetails? _getSelectedProductDetails() {
    return _products
        .firstWhereOrNull((element) => element.id == _selectedProductId);
  }

  setSelectedProductId(String id) {
    setState(() {
      _selectedProductId = id;
    });
  }

  showPendingUI() {
    setState(() {});
  }

  handleError(IAPError error) {
    setState(() {});
  }

  handlePurchaseButtonAsync(ProductDetails? productDetails) async {
    debugPrint("handlePurchaseButtonAsync() called");
    if (productDetails == null) {
      return;
    }

    late PurchaseParam purchaseParam;

    if (Platform.isAndroid) {
      purchaseParam = GooglePlayPurchaseParam(
          productDetails: productDetails, changeSubscriptionParam: null);
    } else {
      purchaseParam = PurchaseParam(
        productDetails: productDetails,
      );
      var transactions = await SKPaymentQueueWrapper().transactions();
      for (var skPaymentTransactionWrapper in transactions) {
        await SKPaymentQueueWrapper()
            .finishTransaction(skPaymentTransactionWrapper);
      }
    }
    await _inAppPurchase
        .buyNonConsumable(purchaseParam: purchaseParam)
        .catchError((error) {
      EasyLoading.showError(S.current.cantPur);
      return true;
    });
  }

  handleTermButton() {
    debugPrint("handleTermButtonTapped() called");
    Navigator.of(context).push(PageTransition(
        child: BrowserPage(
          url: 'https://sites.google.com/view/hello-vpn-fast-proxy',
          title: S.current.term,
        ),
        type: PageTransitionType.rightToLeft));
  }

  handleRestoreButtonAsync() async {
    EasyLoading.show();
    await _inAppPurchase.restorePurchases().catchError((e) {
      if (e is SKError) {
        EasyLoading.showInfo(
            e.userInfo['NSLocalizedDescription'] ?? S.current.smthe);
      }
    });
    EasyLoading.dismiss();
  }

  handlePrivacyPolicyButton() {
    Navigator.of(context).push(PageTransition(
      child: BrowserPage(
          url: 'https://sites.google.com/view/hellovpn-fastproxy',
          title: S.current.privacyPolicy),
      type: PageTransitionType.rightToLeft,
    ));
  }
}

/// Example implementation of the
/// [`SKPaymentQueueDelegate`](https://developer.apple.com/documentation/storekit/skpaymentqueuedelegate?language=objc).
///
/// The payment queue delegate can be implementated to provide information
/// needed to complete transactions.
class ExamplePaymentQueueDelegate implements SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(
      SKPaymentTransactionWrapper transaction, SKStorefrontWrapper storefront) {
    return false;
  }

  @override
  bool shouldShowPriceConsent() {
    return false;
  }
}

extension ProductDetailsExt on ProductDetails {
  String parseDuration() {
    switch (id) {
      // case _weekId:
      //   return S.current.week;
      // case _monthId:
      //   return S.current.month;
      // case _yearId:
      //   return S.current.year;
      default:
        return "Undefine";
    }
  }

  String parseDescription() {
    String duration = parseDuration();
    return "${S.current.days} $price/$duration";
  }
}
