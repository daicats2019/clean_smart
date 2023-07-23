import 'package:com.qksoft.sharefilemess/utils/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Page/HomePage.dart';
import 'Page/Page Contact/all_contact.dart';
import 'Page/Page Contact/duplacates_name/duplicate_name.dart';
import 'Page/Page Contact/duplacates_name/duplicate_name_preview.dart';
import 'Page/Page Contact/duplicate_email/duplicate_email_preview.dart';
import 'Page/Page Contact/duplicate_email/duplicates_email.dart';
import 'Page/Page Contact/duplicate_phone/duplicates_phone.dart';
import 'Page/Page Contact/duplicate_phone/duplicates_phone_preview.dart';
import 'Page/Page Contact/no_email_no_phone.dart';
import 'Page/Page Contact/no_names.dart';
import 'Page/Page Contact/no_phons.dart';
import 'Page/PageWelcom/welcomPage.dart';
import 'Page/PageWelcom/welcomPage2.dart';
import 'Page/PageWelcom/welcomPage3.dart';
import 'Page/PageWelcom/welcomePage4.dart';
import 'Page/PhotoCompress/photo_compresstion_success.dart';
import 'Page/PremiumPage/premiumPage.dart';
import 'Page/SettingPage/Setting.dart';
import 'Page/VideoCompress/video_compress_preview.dart';
import 'Page/VideoCompress/video_compress_resulte.dart';
import 'Page/VideoCompress/video_compress_scan.dart';
import 'Page/VideoCompress/video_compress_result_scan.dart';
import 'Page/VideoCompress/video_compress_success.dart';
import 'Page/compress.dart';
import 'Page/delete_contact.dart';
import 'Page/item_file_photo/album_locations.dart';
import 'Page/item_file_photo/all_photo.dart';
import 'Page/smart_cleaner_clean_up_scan.dart';
import 'Page/delete_video.dart';
import 'Page/delete_image.dart';
import 'Page/done_clean_up.dart';
import 'Page/item_file_photo/filter_by_date.dart';
import 'Page/item_file_photo/live_photo_scan.dart';
import 'Page/item_file_photo/screen_shot_scan.dart';
import 'Page/item_file_photo/similer_photo_scan.dart';
import 'Page/item_file_photo/similer_video_scan.dart';
import 'Page/loading_scan.dart';
import 'Page/locations.dart';
import 'Page/organisePAge/organisePage.dart';
import 'Page/item_file_photo/photo_brust.dart';
import 'Page/PhotoCompress/photo_compress_scan.dart';
import 'Page/PhotoCompress/photo_compress_preview.dart';
import 'Page/PhotoCompress/photo_compress_scan_image.dart';
import 'Page/smart_scan.dart';
import 'Route/constan_route.dart';
import 'model/product.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(ProductAdapter());

  await Hive.openBox<Product>('product');

  await setupGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case NamedRoute.homePageName:
            {
              return MaterialPageRoute(builder: (context) => HomePage());
            }
          case NamedRoute.wellcomPage:
            {
              return MaterialPageRoute(builder: (context) => WelcomPage());
            }
          case NamedRoute.wellcomPage2:
            {
              return MaterialPageRoute(builder: (context) => WelcomPage2());
            }
          case NamedRoute.wellcomPage3:
            {
              return MaterialPageRoute(builder: (context) => WelcomPage3());
            }
          case NamedRoute.wellcomPage4:
            {
              return MaterialPageRoute(builder: (context) => WelcomPage4());
            }
          case NamedRoute.organisePage:
            {
              return MaterialPageRoute(builder: (context) => Organise());
            }
          case NamedRoute.settingPage:
            {
              return MaterialPageRoute(builder: (context) => SettingPage());
            }
          case NamedRoute.premiumPage:
            {
              return MaterialPageRoute(builder: (context) => PremiumPage());
            }
          case NamedRoute.smartScarn:
            {
              return MaterialPageRoute(builder: (context) => SmartScan());
            }
          case NamedRoute.loadingScan:
            {
              return MaterialPageRoute(builder: (context) => LoadingScan());
            }
          case NamedRoute.cleanUpScan:
            {
              return MaterialPageRoute(builder: (context) => CleanUp());
            }
          case NamedRoute.similarVideoScan:
            {
              return MaterialPageRoute(builder: (context) => SimilarVideos());
            }
          case NamedRoute.similarPhotoScan:
            {
              return MaterialPageRoute(builder: (context) => SimilarPhoto());
            }
          case NamedRoute.screenShotScan:
            {
              return MaterialPageRoute(builder: (context) => SceenShot());
            }
          case NamedRoute.livePhotoScan:
            {
              return MaterialPageRoute(builder: (context) => LivePhoto());
            }
          case NamedRoute.doneCleanUp:
            {
              return MaterialPageRoute(builder: (context) => DoneCleanUp());
            }
          case NamedRoute.deleteImage:
            {
              return MaterialPageRoute(builder: (context) => DeleteIamge());
            }
          case NamedRoute.allPhoto:
            {
              return MaterialPageRoute(builder: (context) => AllPhoto());
            }
          case NamedRoute.filterByDate:
            {
              return MaterialPageRoute(builder: (context) => FilterByDate());
            }
          case NamedRoute.locations:
            {
              return MaterialPageRoute(builder: (context) => Locations());
            }
          case NamedRoute.albumLocations:
            {
              return MaterialPageRoute(builder: (context) => AlbumLocations());
            }
          case NamedRoute.photoBrust:
            {
              return MaterialPageRoute(builder: (context) => PhotoBrust());
            }
          case NamedRoute.deleteVideo:
            {
              return MaterialPageRoute(builder: (context) => DeletaVideo());
            }
          case NamedRoute.deleteContact:
            {
              return MaterialPageRoute(builder: (context) => DeleteContact());
            }
          case NamedRoute.allContact:
            {
              return MaterialPageRoute(builder: (context) => AllContacts());
            }
          case NamedRoute.duplicateName:
            {
              return MaterialPageRoute(builder: (context) => DuplicateName());
            }
          case NamedRoute.duplicateNamePreview:
            {
              return MaterialPageRoute(
                  builder: (context) => DuplicateNamePreview());
            }
          case NamedRoute.duplicatePhones:
            {
              return MaterialPageRoute(builder: (context) => DuplicatesPhone());
            }
          case NamedRoute.duplicatePhonesPreview:
            {
              return MaterialPageRoute(
                  builder: (context) => DuplicatePhonePreview());
            }
          case NamedRoute.duplicateEmail:
            {
              return MaterialPageRoute(builder: (context) => DuplicatesEmail());
            }
          case NamedRoute.duplicateEmailPreview:
            {
              return MaterialPageRoute(
                  builder: (context) => DuplicateEmailPreview());
            }
          case NamedRoute.noName:
            {
              return MaterialPageRoute(builder: (context) => NoNames());
            }
          case NamedRoute.noPhone:
            {
              return MaterialPageRoute(builder: (context) => NoPhones());
            }
          case NamedRoute.noEmailnoPhone:
            {
              return MaterialPageRoute(builder: (context) => NoEmailNoPhone());
            }
          case NamedRoute.compress:
            {
              return MaterialPageRoute(builder: (context) => Compress());
            }
          case NamedRoute.photoCompress:
            {
              return MaterialPageRoute(builder: (context) => PhotoCompress());
            }
          case NamedRoute.photoCompressPreview:
            {
              return MaterialPageRoute(
                  builder: (context) => PhotoCompressPreview());
            }
          case NamedRoute.photoCompressScanImage:
            {
              return MaterialPageRoute(
                  builder: (context) => PhotoCompressScanImage());
            }
          case NamedRoute.photoCompressScanSuccess:
            {
              return MaterialPageRoute(
                  builder: (context) => PhotoCompressSuccess());
            }
          case NamedRoute.videoCompress:
            {
              return MaterialPageRoute(builder: (context) => VideoCompress());
            }
          case NamedRoute.videoCompressPreview:
            {
              return MaterialPageRoute(
                  builder: (context) => VideoCompresPreview());
            }
          case NamedRoute.videoCompressResult:
            {
              return MaterialPageRoute(
                  builder: (context) => VideoCompresResult());
            }
          case NamedRoute.videoCompressResultScan:
            {
              return MaterialPageRoute(
                  builder: (context) => VideoCompressResultScan());
            }
          case NamedRoute.videoCompressSuccess:
            {
              return MaterialPageRoute(
                  builder: (context) => VideoCompressSuccess());
            }
        }
      },
    );
  }
}
