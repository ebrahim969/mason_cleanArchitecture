## Dependencies

Below is a list of default dependencies used in this project:
```yaml
dependencies:
  cached_network_image:
  connectivity_plus:
  country_code_picker:
  cupertino_icons:
  dio:
  fpdart:
  easy_localization:
  equatable:
  firebase_core: ^2.32.0
  firebase_messaging: ^14.9.4
  flutter:
    sdk: flutter
  flutter_bloc:
  flutter_local_notifications: ^17.1.2
  flutter_screenutil:
  flutter_secure_storage: 9.0.0
  flutter_svg:
  get_it:
  go_router:
  google_fonts:
  logger:
  rxdart:
  shared_preferences:
  shimmer:
  url_launcher:
  lottie: ^2.7.0
  pinput: ^3.0.1
  local_auth: ^2.1.8
  file_picker: ^6.1.1
  percent_indicator: ^4.2.3
  intl: 
  google_maps_flutter: ^2.5.3
  geolocator:
  permission_handler: ^11.2.0
  image_picker:
  image_cropper:
  device_info_plus: ^9.1.1
  flutter_animate: ^4.5.0
  share_plus: ^7.2.2
  readmore: ^3.0.0
  carousel_slider: ^4.2.1  
  sticky_headers: ^0.3.0+2
  animated_flip_counter: ^0.3.4
  rename: ^3.0.2

```


### generate project template:
```shell
mason make core -o .././lib
```

### add new feature (enter feature name)
```shell
mason make feature -o .././lib/features 
```

### generate assets folder
```shell
mason make assets -o ../assets
```

### generate readme file (enter project name)
```shell
mason make readme -o ../
```

### Add assets and fonts paths in pubspec.yaml file
```yaml
  assets:
    - assets/

  fonts:
    - family: fontName 
      fonts:
        - asset: assets/fonts/teshrin/fontName-Light.ttf
          weight: 300
        - asset: assets/fonts/teshrin/fontName-Regular.ttf
          weight: 400
        - asset: assets/fonts/teshrin/fontName-Medium.ttf
          weight: 500
        - asset: assets/fonts/teshrin/fontName-Bold.ttf
          weight: 600

```