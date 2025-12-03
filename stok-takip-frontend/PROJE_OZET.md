# 📦 STOK TAKİP SİSTEMİ - PROJE ÖZETİ

## 🎯 Proje Açıklaması

Profesyonel, modern ve kullanıcı dostu bir stok takip sistemi. Angular frontend ve Spring Boot backend ile geliştirilmiştir.

## 📁 Proje Konumları

### Frontend (Angular)
```
📂 C:\frontend_projects\stok-takip-frontend\stok-takip-app
```

### Backend (Spring Boot)
```
📂 C:\backend_projects\stok-takip-backend
```

## 🚀 Hızlı Başlangıç

### 1. Backend Kurulumu

#### Veritabanı Oluşturma
```bash
# MySQL'e giriş yapın
mysql -u root -p

# Veritabanını oluşturun
CREATE DATABASE stok_takip_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

# Script'i çalıştırın
USE stok_takip_db;
source C:\backend_projects\stok-takip-backend\src\main\resources\database-schema.sql
```

#### Backend'i Çalıştırma

**Yöntem 1: Maven ile**
```bash
cd C:\backend_projects\stok-takip-backend
mvn clean install
mvn spring-boot:run
```

**Yöntem 2: IntelliJ IDEA ile**
1. `File` > `Open` > `C:\backend_projects\stok-takip-backend`
2. Maven bağımlılıklarının inmesini bekleyin
3. `StokTakipBackendApplication.java` dosyasını açın
4. Yeşil play (▶) butonuna tıklayın

Backend: **http://localhost:8080/api**

### 2. Frontend Kurulumu

#### Angular'ı Çalıştırma
```bash
cd C:\frontend_projects\stok-takip-frontend\stok-takip-app
npm install
ng serve
```

Frontend: **http://localhost:4200**

## 👤 Varsayılan Kullanıcı Bilgileri

```
Kullanıcı Adı: admin
Şifre: admin123
Rol: ADMIN
```

## 🏗️ Mimari Yapı

### Frontend (Angular 19)
```
stok-takip-app/
├── src/app/
│   ├── core/              # Singleton servisler
│   ├── shared/            # Paylaşılan componentler
│   │   └── layout/        # Ana layout
│   ├── features/          # Feature modülleri
│   │   ├── auth/          # Login/Register
│   │   ├── dashboard/     # Dashboard
│   │   ├── urun/          # Ürün yönetimi
│   │   ├── kategori/      # Kategori yönetimi
│   │   ├── tedarikci/     # Tedarikçi
│   │   ├── stok-hareketi/ # Stok hareketleri
│   │   └── kullanici/     # Kullanıcı yönetimi
│   ├── models/            # Data modelleri
│   ├── services/          # API servisleri
│   ├── guards/            # Route guards
│   ├── interceptors/      # HTTP interceptors
│   └── enums/             # Enum tanımları
└── src/environments/      # Ortam ayarları
```

### Backend (Spring Boot 3.2.0)
```
stok-takip-backend/
├── src/main/java/com/stoktakip/
│   ├── config/            # Yapılandırma (Security, JWT)
│   ├── controller/        # REST Controllers
│   ├── dto/               # Data Transfer Objects
│   ├── entity/            # JPA Entities
│   ├── enums/             # Enum sınıfları
│   ├── exception/         # Exception handling
│   ├── repository/        # JPA Repositories
│   ├── security/          # Security components
│   └── service/           # Business logic
└── src/main/resources/
    ├── application.properties
    └── database-schema.sql
```

## 🔑 Özellikler

### ✅ Frontend Özellikleri
- 🎨 Modern ve responsive UI tasarımı
- 🔐 JWT token tabanlı kimlik doğrulama
- 📊 Dashboard ve istatistikler
- 📦 Ürün yönetimi (CRUD)
- 🗂️ Kategori yönetimi
- 🏢 Tedarikçi yönetimi
- 📈 Stok hareketi takibi
- 👥 Kullanıcı yönetimi
- 🛡️ Route guards ve koruma
- 🔄 HTTP interceptors
- ⚡ Standalone components

### ✅ Backend Özellikleri
- 🔒 Spring Security + JWT
- 🗄️ MySQL veritabanı
- 📐 Layered Architecture
- 🔍 JPA Specification (Dynamic SQL)
- 🗺️ MapStruct (DTO Mapping)
- 🔧 Lombok (Code optimization)
- 🌐 CORS yapılandırması
- 📝 Global Exception Handling
- 🔄 Base Entity Pattern
- 📊 RESTful API

## 🌐 API Endpoints

### Authentication
```
POST   /api/auth/login       # Giriş
POST   /api/auth/register    # Kayıt
```

### Ürün İşlemleri
```
GET    /api/urun                        # Tüm ürünler
GET    /api/urun/{id}                   # Ürün detay
POST   /api/urun                        # Yeni ürün
PUT    /api/urun/{id}                   # Ürün güncelle
DELETE /api/urun/{id}                   # Ürün sil
GET    /api/urun/paged                  # Sayfalı liste
GET    /api/urun/kategori/{kategoriId}  # Kategoriye göre
GET    /api/urun/tedarikci/{tedarikciId}# Tedarikçiye göre
GET    /api/urun/kritik-stok            # Kritik stok ürünleri
GET    /api/urun/barkod/{barkod}        # Barkoda göre
```

### Dashboard
```
GET    /api/dashboard/istatistikler     # İstatistikler
GET    /api/dashboard/kritik-stoklar    # Kritik stok uyarıları
GET    /api/dashboard/aylik-hareketler  # Aylık grafikler
```

## 📦 Postman Collection

Postman collection dosyası:
```
C:\backend_projects\stok-takip-backend\Stok-Takip-API.postman_collection.json
```

### Postman'e İmport Etme:
1. Postman'i açın
2. `Import` butonuna tıklayın
3. Collection dosyasını seçin
4. Login isteği ile token alın
5. Token'ı collection variables'a kaydedin

## 🔧 Teknolojiler

### Frontend
- Angular 19
- TypeScript
- SCSS
- RxJS
- Standalone Components
- Angular Material (isteğe bağlı)

### Backend
- Java 17
- Spring Boot 3.2.0
- Spring Security
- Spring Data JPA
- MySQL 8
- Lombok
- MapStruct
- JWT
- Maven

## 📊 Veritabanı Tabloları

```sql
- kullanici        # Kullanıcılar
- kategori         # Kategoriler (hiyerarşik)
- tedarikci        # Tedarikçiler
- urun             # Ürünler
- stok_hareketi    # Stok hareketleri
- parametre        # Sistem parametreleri
```

## 🎨 IntelliJ IDEA'ya Import Etme

### Backend
1. IntelliJ IDEA'yı açın
2. `File` > `Open`
3. `C:\backend_projects\stok-takip-backend` klasörünü seçin
4. Maven bağımlılıklarının inmesini bekleyin
5. Lombok plugin'i kurun (`Settings` > `Plugins` > "Lombok")
6. Annotation Processing'i aktifleştirin (`Settings` > `Compiler` > `Annotation Processors`)
7. JDK 17 seçin (`Project Structure` > `Project SDK`)
8. Run Configuration oluşturun (Spring Boot)
9. Çalıştırın

### Frontend
1. IntelliJ IDEA'yı açın
2. `File` > `Open`
3. `C:\frontend_projects\stok-takip-frontend\stok-takip-app` klasörünü seçin
4. Node.js interpreter'ı seçin (`Settings` > `Languages & Frameworks` > `Node.js`)
5. Angular CLI'yi yapılandırın
6. NPM script oluşturun (`Run` > `Edit Configurations` > `npm`)
   - Name: Angular Start
   - Command: run
   - Scripts: start
7. Çalıştırın

## 🔐 Güvenlik

- JWT token (24 saat geçerlilik)
- BCrypt şifreleme
- Spring Security
- CORS: http://localhost:4200
- HTTP-only authentication

## 🌟 Önemli Notlar

### CORS Ayarları
Backend'de CORS Angular için açıktır:
```java
// SecurityConfig.java
configuration.setAllowedOrigins(List.of("http://localhost:4200"));
```

### Veritabanı Bağlantısı
```properties
# application.properties
spring.datasource.url=jdbc:mysql://localhost:3306/stok_takip_db
spring.datasource.username=root
spring.datasource.password=12345
```

### Environment Ayarları
```typescript
// environment.ts
export const environment = {
  production: false,
  apiUrl: 'http://localhost:8080/api'
};
```

## 📝 Kullanım Senaryosu

1. **Backend'i başlatın** (port 8080)
2. **Frontend'i başlatın** (port 4200)
3. Tarayıcıda **http://localhost:4200** adresine gidin
4. **admin / admin123** ile giriş yapın
5. Dashboard'u görüntüleyin
6. Ürün ekleyin, düzenleyin, silin
7. Stok hareketlerini takip edin

## 🐛 Sorun Giderme

### Port 8080 kullanımda
```properties
# application.properties dosyasında portu değiştirin
server.port=8081
```

### Port 4200 kullanımda
```bash
ng serve --port 4201
```

### MySQL bağlantı hatası
- MySQL servisinin çalıştığından emin olun
- Kullanıcı adı ve şifreyi kontrol edin
- Veritabanının oluşturulduğundan emin olun

### CORS hatası
- Backend'de CORS ayarlarını kontrol edin
- Frontend URL'sinin doğru olduğundan emin olun

## 📚 Ek Kaynaklar

- Angular Docs: https://angular.io/docs
- Spring Boot Docs: https://spring.io/projects/spring-boot
- JWT.io: https://jwt.io
- MySQL Docs: https://dev.mysql.com/doc/

## 🎉 Sonuç

Profesyonel bir stok takip sistemi başarıyla oluşturuldu! 

**Frontend:** Modern Angular SPA  
**Backend:** Güvenli Spring Boot REST API  
**Database:** MySQL ile veri yönetimi  
**Security:** JWT token authentication  
**Architecture:** Layered & Clean Architecture  

Tüm dosyalar oluşturuldu, CORS ayarları yapılandırıldı ve sistem çalışmaya hazır! 🚀

