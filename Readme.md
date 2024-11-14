## Usage

### install maosn cli

```shell
dart pub global activate mason_cli
```

### add mason to your project

```shell
mkdir mason
cd mason
mason init
```

### add bricks to mason.yaml file

- replace paths with the bricks path on your pc

```yaml
bricks:
  i18n:
    path: D:/projects/bricks/i18n (replace with real path)
  readme:
    path: D:/projects/bricks/readme (replace with real path)
  assets:
    path: D:/projects/bricks/assets (replace with real path)
  core:
    path: D:/projects/bricks/core (replace with real path)
  feature:
    path: D:/projects/bricks/feature (replace with real path)
```

### get bricks

```shell
mason get
```

## Dependencies

Below is a list of default dependencies used in this project:

```yaml
dependencies:
  flutter:
    sdk: flutter
  animate_do: ^3.3.4
  bot_toast: ^4.1.3
  cached_network_image: ^3.3.1
  carousel_slider: ^5.0.0
  change_app_package_name: ^1.3.0
  connectivity_plus: ^6.0.3
  country_picker: ^2.0.26
  crypto: ^3.0.5
  cupertino_icons: ^1.0.6
  custom_timer: ^0.2.3
  dio: ^5.4.3+1
  easy_rich_text: ^2.1.0
  firebase_core: ^3.4.0
  firebase_messaging: ^15.1.0
  flutter_bloc: ^8.1.6
  flutter_local_notifications: ^17.2.2
  flutter_screenutil: ^5.9.3
  flutter_staggered_grid_view: ^0.7.0
  flutter_svg: ^2.0.10+1
  flutter_svg_provider: ^1.0.7
  flutter_widget_from_html: ^0.15.1
  gap: ^3.0.1
  geocoding: ^3.0.0
  equatable: ^2.0.5
  google_maps_flutter: ^2.9.0
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  http: ^1.2.1
  http_parser: ^4.0.2
  image_picker: ^1.1.2
  loading_animation_widget: ^1.2.1
  location: ^7.0.0
  mime: ^1.0.5
  path: ^1.9.0
  path_provider: ^2.1.3
  photo_view: ^0.15.0
  pinput: ^5.0.0
  pretty_dio_logger: ^1.3.1
  easy_localization: ^3.0.7
  pusher_channels_flutter: ^2.2.1
  rename: ^3.0.2
  shimmer_animation: ^2.2.1
  smooth_page_indicator: ^1.1.0
  table_calendar: ^3.1.2
  timeago: ^3.6.1
  timeline_tile: ^2.0.0
  url_launcher: ^6.3.0
  uuid: ^4.4.2
  webview_flutter: ^4.9.0
  webview_flutter_android: ^3.16.7
  webview_flutter_wkwebview: ^3.15.0
  dartz: ^0.10.1
  get_it: ^8.0.1
  internet_connection_checker_plus: ^2.5.2
```

### generate project template:

```shell
mason make core -o .././lib
```

### add new feature (enter feature name)

```shell
mason make feature -o .././lib/features
```

### generate lang folder

```shell
mason make i18n -o ../i18n
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
  - i18n/
  - assets/

fonts:
  - family: fontName
    fonts:
      - asset: assets/fonts/fontName/fontName-Light.ttf
        weight: 300
      - asset: assets/fonts/fontName/fontName-Regular.ttf
        weight: 400
      - asset: assets/fonts/fontName/fontName-Medium.ttf
        weight: 500
      - asset: assets/fonts/fontName/fontName-Bold.ttf
        weight: 600
```

### clear mason cache

```shell
mason cache clear
```

## create android flavors
### add this to android/app/build.gradle.

```shell
  flavorDimensions += "default"

  productFlavors {
      create("development") {
          dimension = "default"
          resValue(type = "string", name = "app_name", value = "your app name")
          applicationIdSuffix = ".dev"
      }
      create("production") {
          dimension = "default"
          resValue(type = "string", name = "app_name", value = "your app name")
      }
```
### change label in AndroidManifest.xml

```shell
android:label="@string/app_name"
```

### generate launch file (vscode configuration)

```shell
mason make launch -o ../.vscode
```

