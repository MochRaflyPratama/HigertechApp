# higertechapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## State Managemen
State management yang dipakai adalah GetX. Selain state management, GetX juga berfungsi sebagai routing, dan API interaksi. Explore lebih lengkap, terutama bagian
1. GetX routing
2. GetX : GetBuilder, Obx , Get View


## Alur Panambahan Module
1. buat folde baru di dalam folder module/
2. buat struktur foldernya seperti home atau station dan juga cara setupnya mirip (Penting: pastikan membuat binding untuk controller dan view)
3. tambahkan route baru di folder route (app_route) dan tambahkan page baru di app_page. Ikuti saja seperti yang sudah ada

## Alur Pengambilan Data
1. buat model sesuai response dari API (lihat cth di module station/model/station_model.dart)
2. buat di dalam folder repository. Folder ini bertujuan untuk berinteraksi dengan API (lihat cth di module station/repository/station_repository.dart)
3. buat controllernya untuk menampung data dari API. Data ini yang akan ditampilkan di View
4. Buat view (lihat contoh di module station/view/station_view.dart) dan tampilkan datanya di view
