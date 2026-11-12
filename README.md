# Project

Frontend Flutter — target utama **Android**, **Web opsional**.

## Prasyarat

Flutter SDK belum terpasang di mesin ini. Install dulu:

```bash
brew install --cask flutter
flutter doctor
```

Yang sudah ada di mesin ini:

- Homebrew ✅
- Android SDK (`~/Library/Android/sdk`) ✅

Android Studio juga perlu untuk emulator, atau pakai HP fisik dengan USB debugging.

## Setup pertama kali

Folder `android/` dan file pendukung lain dibuat oleh `flutter create`.
Jalankan sekali di root project:

```bash
flutter create . --platforms=android,web --org com.example --project-name project
flutter pub get
```

> `flutter create .` tidak menimpa file yang sudah ada, jadi `lib/`, `web/`,
> `pubspec.yaml`, dan konfigurasi di repo ini tetap aman.
>
> Kalau nanti butuh iOS, tinggal jalankan
> `flutter create . --platforms=ios`.

## Menjalankan

```bash
flutter devices           # lihat device/emulator yang tersedia
flutter run               # Android (HP/emulator)
flutter run -d chrome     # Web (opsional)
```

## Perintah lain

```bash
flutter analyze           # lint & static analysis
flutter test              # widget test
flutter build apk         # build Android (release)
flutter build web         # build web ke build/web
```

## Struktur

```
lib/
├── main.dart                 # entry point
├── app.dart                  # MaterialApp + routing
└── src/
    ├── theme.dart            # tema Material 3 (dark)
    ├── home_page.dart        # halaman utama (responsive)
    └── widgets/
        └── feature_card.dart
test/
└── widget_test.dart
web/
├── index.html
└── manifest.json
```

Mulai mengembangkan UI dari `lib/src/home_page.dart`.
