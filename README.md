# 🏷️ Stok Takip Fullstack Uygulaması

<div align="center">

![Angular](https://img.shields.io/badge/Angular-20-red?style=for-the-badge&logo=angular)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.5.0-brightgreen?style=for-the-badge&logo=spring)
![Java](https://img.shields.io/badge/Java-17-orange?style=for-the-badge&logo=java)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?style=for-the-badge&logo=mysql)
![TypeScript](https://img.shields.io/badge/TypeScript-5.8-blue?style=for-the-badge&logo=typescript)

**Modern, kullanıcı dostu ve ölçeklenebilir stok takip ve depo yönetim sistemi**

[🚀 Hızlı Başlangıç](#-hızlı-başlangıç) • [📋 Özellikler](#-özellikler) • [🛠️ Teknolojiler](#️-teknolojiler) • [📖 Dokümantasyon](#-dokümantasyon)

</div>

---

## 📋 İçindekiler

- [Genel Bakış](#-genel-bakış)
- [Özellikler](#-özellikler)
- [Teknolojiler](#️-teknolojiler)
- [Hızlı Başlangıç](#-hızlı-başlangıç)
- [Kurulum](#-kurulum)
- [Kullanım](#-kullanım)
- [API Dokümantasyonu](#-api-dokümantasyonu)
- [Proje Yapısı](#-proje-yapısı)
- [Geliştirme](#-geliştirme)
- [Katkıda Bulunma](#-katkıda-bulunma)
- [Lisans](#-lisans)

---

## 🎯 Genel Bakış

Stok Takip Fullstack Uygulaması, işletmelerin stok, depo ve tedarikçi yönetimini dijitalleştirmek için geliştirilmiş modern bir web uygulamasıdır. Angular frontend ve Spring Boot backend ile geliştirilmiş bu sistem, kullanıcı dostu arayüzü ve güçlü backend altyapısı ile stok takibini kolaylaştırır.

### ✨ Temel Özellikler

- 📦 **Stok Yönetimi**: Ürün, kategori ve tedarikçi yönetimi
- 📊 **Depo İşlemleri**: Depo giriş, çıkış, iade ve hurda işlemleri
- 🔍 **Gelişmiş Arama**: Hızlı ve etkili filtreleme özellikleri
- 📈 **Raporlama**: Detaylı stok hareket raporları
- 🔐 **Güvenlik**: Spring Security ile korumalı API endpoint'leri
- 📱 **Responsive**: Tüm cihazlarda mükemmel görünüm

---

## 🚀 Özellikler

### Backend Özellikleri

- ✅ RESTful API mimarisi
- ✅ Spring Security entegrasyonu
- ✅ JPA/Hibernate ile veritabanı yönetimi
- ✅ DTO pattern ile veri transferi
- ✅ Global exception handling
- ✅ CORS yapılandırması
- ✅ Transactional işlem yönetimi
- ✅ Otomatik veritabanı şema oluşturma

### Frontend Özellikleri

- ✅ Angular 20 ile modern UI
- ✅ Reactive Forms ile form yönetimi
- ✅ HTTP Interceptor'lar ile merkezi hata yönetimi
- ✅ Route Guard'lar ile yetkilendirme
- ✅ Responsive tasarım
- ✅ Arama ve filtreleme
- ✅ Kullanıcı dostu bildirimler

### Modüller

| Modül | Açıklama | Endpoint |
|-------|----------|----------|
| 🏷️ **Stok Kart** | Stok kartı yönetimi | `/api/stok-kart` |
| 📦 **Stok Hareket** | Stok giriş/çıkış işlemleri | `/api/stok-hareket` |
| 🏢 **Depo** | Depo yönetimi | `/api/depo` |
| ⚙️ **Parametre** | Sistem parametreleri | `/api/parametre` |
| 📦 **Ürün** | Ürün yönetimi | `/api/urun` |
| 📂 **Kategori** | Kategori yönetimi | `/api/kategori` |
| 🏭 **Tedarikçi** | Tedarikçi yönetimi | `/api/tedarikci` |
| 👤 **Kullanıcı** | Kullanıcı yönetimi | `/api/kullanici` |
| 🔐 **Auth** | Kimlik doğrulama | `/api/auth` |

---

## 🛠️ Teknolojiler

### Backend Stack

```
Java 17
├── Spring Boot 3.5.0
├── Spring Data JPA
├── Spring Security
├── Hibernate
├── MySQL Connector
└── Lombok
```

### Frontend Stack

```
Angular 20
├── TypeScript 5.8
├── RxJS
├── Angular Material
└── Angular Router
```

### Veritabanı

- **MySQL 8.0+**
- Hibernate DDL Auto Update
- UTF-8 karakter desteği

### Geliştirme Araçları

- Maven (Backend)
- npm (Frontend)
- Git

---

## 🚀 Hızlı Başlangıç

### Ön Gereksinimler

Aşağıdaki yazılımların sisteminizde yüklü olması gerekmektedir:

- ☕ **Java 17** veya üzeri
- 📦 **Node.js 18+** ve npm
- 🗄️ **MySQL 8.0+**
- 🔧 **Maven** (veya projede bulunan `mvnw` wrapper)

### ⚡ 5 Dakikada Başlatma

#### 1️⃣ Veritabanını Oluşturun

MySQL'de veritabanını oluşturun:

```sql
CREATE DATABASE stok_takip CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

Veya proje kök dizinindeki script'i kullanın:

```bash
cd stok-takip-backend
.\create_database.bat
```

#### 2️⃣ Backend Yapılandırması

`stok-takip-backend/src/main/resources/application.properties` dosyasında veritabanı bilgilerinizi kontrol edin:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/stok_takip?useSSL=false&serverTimezone=UTC&characterEncoding=UTF-8
spring.datasource.username=root
spring.datasource.password=12345
```

#### 3️⃣ Uygulamayı Başlatın

**Windows PowerShell'de:**

```powershell
# Her ikisini de başlat
.\start-all.bat

# Veya ayrı ayrı
.\start-backend.bat    # Backend (port 8080)
.\start-frontend.bat   # Frontend (port 4200)
```

**Manuel Başlatma:**

```bash
# Backend
cd stok-takip-backend
.\mvnw.cmd spring-boot:run

# Frontend (yeni terminal)
cd stok-takip-frontend/stok-takip-app
npm install  # İlk kez çalıştırıyorsanız
npm start
```

#### 4️⃣ Uygulamaya Erişin

- 🌐 **Frontend**: [http://localhost:4200](http://localhost:4200)
- 🔌 **Backend API**: [http://localhost:8080/api](http://localhost:8080/api)

#### 5️⃣ Giriş Yapın

**Test Kullanıcı Bilgileri:**
- Herhangi bir kullanıcı adı ve şifre ile giriş yapabilirsiniz
- Örnek: `Kullanıcı Adı: admin`, `Şifre: 123`

> ⚠️ **Not**: Bu mock authentication'dır. Production için gerçek kullanıcı doğrulama sistemi eklenmelidir.

---

## 📦 Kurulum

### Detaylı Kurulum Adımları

#### Backend Kurulumu

1. **Bağımlılıkları Yükleyin**

```bash
cd stok-takip-backend
.\mvnw.cmd clean install
```

2. **Veritabanı Yapılandırması**

`application.properties` dosyasını düzenleyin:

```properties
# Veritabanı bağlantı bilgileri
spring.datasource.url=jdbc:mysql://localhost:3306/stok_takip
spring.datasource.username=root
spring.datasource.password=YOUR_PASSWORD

# JPA ayarları
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

3. **Backend'i Başlatın**

```bash
.\mvnw.cmd spring-boot:run
```

Backend `http://localhost:8080` adresinde çalışacaktır.

#### Frontend Kurulumu

1. **Bağımlılıkları Yükleyin**

```bash
cd stok-takip-frontend/stok-takip-app
npm install
```

2. **Environment Yapılandırması**

`src/environments/environment.ts` dosyası zaten yapılandırılmış:

```typescript
export const environment = {
  production: false,
  apiUrl: 'http://localhost:8080/api'
};
```

3. **Frontend'i Başlatın**

```bash
npm start
```

Frontend `http://localhost:4200` adresinde çalışacaktır.

---

## 📖 Kullanım

### Ana Özellikler

#### 🏷️ Stok Kart Yönetimi

- Stok kartları oluşturma, düzenleme ve silme
- Stok koduna göre arama
- Aktif/Pasif durum yönetimi

#### 📦 Stok Hareket İşlemleri

- Stok giriş işlemleri
- Stok çıkış işlemleri
- İade ve hurda işlemleri
- Hareket geçmişi görüntüleme

#### 🏢 Depo Yönetimi

- Depo oluşturma ve yönetimi
- Depo bazlı stok takibi
- Depo sorumlusu atama

#### 📦 Ürün Yönetimi

- Ürün ekleme, düzenleme, silme
- Kategori ve tedarikçi ile ilişkilendirme
- Barkod ile ürün arama
- Stok miktarı takibi

#### 📂 Kategori Yönetimi

- Hiyerarşik kategori yapısı
- Üst kategori ve alt kategori ilişkileri
- Kategori bazlı ürün filtreleme

#### 🏭 Tedarikçi Yönetimi

- Tedarikçi bilgileri yönetimi
- İletişim bilgileri (telefon, email, adres)
- Vergi bilgileri takibi

---

## 🔌 API Dokümantasyonu

### Authentication

#### Login
```http
POST /api/auth/login
Content-Type: application/json

{
  "kullaniciAdi": "admin",
  "sifre": "123"
}
```

#### Register
```http
POST /api/auth/register
Content-Type: application/json

{
  "kullaniciAdi": "yeni_kullanici",
  "sifre": "sifre123",
  "email": "email@example.com",
  "adSoyad": "Ad Soyad"
}
```

### Stok Kart Endpoints

| Method | Endpoint | Açıklama |
|--------|----------|----------|
| GET | `/api/stok-kart` | Tüm stok kartlarını listele |
| GET | `/api/stok-kart/{id}` | Belirli stok kartını getir |
| POST | `/api/stok-kart` | Yeni stok kartı oluştur |
| PUT | `/api/stok-kart/{id}` | Stok kartını güncelle |
| DELETE | `/api/stok-kart/{id}` | Stok kartını sil |
| GET | `/api/stok-kart/exists/{stokKodu}` | Stok kodu kontrolü |
| PATCH | `/api/stok-kart/{id}/aktif` | Aktif durum güncelle |

### Stok Hareket Endpoints

| Method | Endpoint | Açıklama |
|--------|----------|----------|
| GET | `/api/stok-hareket` | Tüm hareketleri listele |
| GET | `/api/stok-hareket/{id}` | Belirli hareketi getir |
| POST | `/api/stok-hareket` | Yeni hareket oluştur |
| PUT | `/api/stok-hareket/{id}` | Hareketi güncelle |
| DELETE | `/api/stok-hareket/{id}` | Hareketi sil |
| GET | `/api/stok-hareket/by-depo/{depoId}` | Depo bazlı hareketler |
| GET | `/api/stok-hareket/by-stok/{stokKartId}` | Stok kart bazlı hareketler |
| GET | `/api/stok-hareket/by-tip/{hareketTipi}` | Hareket tipi bazlı filtreleme |

### Ürün Endpoints

| Method | Endpoint | Açıklama |
|--------|----------|----------|
| GET | `/api/urun` | Tüm ürünleri listele |
| GET | `/api/urun/{id}` | Belirli ürünü getir |
| POST | `/api/urun` | Yeni ürün oluştur |
| PUT | `/api/urun/{id}` | Ürünü güncelle |
| DELETE | `/api/urun/{id}` | Ürünü sil |
| GET | `/api/urun/kategori/{kategoriId}` | Kategori bazlı ürünler |
| GET | `/api/urun/tedarikci/{tedarikciId}` | Tedarikçi bazlı ürünler |
| GET | `/api/urun/barkod/{barkod}` | Barkod ile ürün arama |

### Kategori Endpoints

| Method | Endpoint | Açıklama |
|--------|----------|----------|
| GET | `/api/kategori` | Tüm kategorileri listele |
| GET | `/api/kategori/{id}` | Belirli kategoriyi getir |
| POST | `/api/kategori` | Yeni kategori oluştur |
| PUT | `/api/kategori/{id}` | Kategoriyi güncelle |
| DELETE | `/api/kategori/{id}` | Kategoriyi sil |
| GET | `/api/kategori/ust-kategoriler` | Üst kategorileri listele |
| GET | `/api/kategori/{ustKategoriId}/alt-kategoriler` | Alt kategorileri listele |

### Tedarikçi Endpoints

| Method | Endpoint | Açıklama |
|--------|----------|----------|
| GET | `/api/tedarikci` | Tüm tedarikçileri listele |
| GET | `/api/tedarikci/{id}` | Belirli tedarikçiyi getir |
| POST | `/api/tedarikci` | Yeni tedarikçi oluştur |
| PUT | `/api/tedarikci/{id}` | Tedarikçiyi güncelle |
| DELETE | `/api/tedarikci/{id}` | Tedarikçiyi sil |

### Depo Endpoints

| Method | Endpoint | Açıklama |
|--------|----------|----------|
| GET | `/api/depo` | Tüm depoları listele |
| GET | `/api/depo/{id}` | Belirli depoyu getir |
| POST | `/api/depo` | Yeni depo oluştur |
| PUT | `/api/depo/{id}` | Depoyu güncelle |
| DELETE | `/api/depo/{id}` | Depoyu sil |

---

## 📁 Proje Yapısı

```
stok_takip/
├── 📂 stok-takip-backend/          # Spring Boot Backend
│   ├── 📂 src/
│   │   └── 📂 main/
│   │       ├── 📂 java/
│   │       │   └── 📂 com/smartworkflow/stoktakip/
│   │       │       ├── 📂 controller/    # REST Controllers
│   │       │       ├── 📂 service/        # Business Logic
│   │       │       │   └── 📂 impl/      # Service Implementations
│   │       │       ├── 📂 repository/    # JPA Repositories
│   │       │       ├── 📂 entity/        # JPA Entities
│   │       │       ├── 📂 dto/           # Data Transfer Objects
│   │       │       ├── 📂 mapper/        # Entity-DTO Mappers
│   │       │       ├── 📂 config/         # Configuration
│   │       │       └── 📂 exception/      # Exception Handlers
│   │       └── 📂 resources/
│   │           └── application.properties
│   ├── 📄 pom.xml
│   └── 📄 README.md
│
└── 📂 stok-takip-frontend/         # Angular Frontend
    └── 📂 stok-takip-app/
        └── 📂 src/
            └── 📂 app/
                ├── 📂 features/     # Feature Modules
                │   ├── 📂 auth/      # Authentication
                │   ├── 📂 dashboard/ # Dashboard
                │   ├── 📂 urun/      # Product Management
                │   ├── 📂 kategori/  # Category Management
                │   ├── 📂 tedarikci/ # Supplier Management
                │   ├── 📂 stok-hareketi/ # Stock Movement
                │   └── 📂 kullanici/ # User Management
                ├── 📂 services/      # API Services
                ├── 📂 models/        # TypeScript Models
                ├── 📂 guards/        # Route Guards
                ├── 📂 interceptors/ # HTTP Interceptors
                └── 📂 shared/        # Shared Components
```

---

## 🛠️ Geliştirme

### Backend Geliştirme

#### Yeni Entity Ekleme

1. `entity/` klasörüne yeni entity oluşturun
2. `dto/` klasörüne DTO oluşturun
3. `repository/` klasörüne Repository interface oluşturun
4. `mapper/` klasörüne Mapper oluşturun
5. `service/` klasörüne Service interface ve implementation oluşturun
6. `controller/` klasörüne Controller oluşturun

#### Veritabanı Değişiklikleri

Hibernate `ddl-auto=update` modunda çalıştığı için entity değişiklikleri otomatik olarak veritabanına yansır.

### Frontend Geliştirme

#### Yeni Component Ekleme

```bash
# Angular CLI ile yeni component
ng generate component features/yeni-modul/yeni-component
```

#### Yeni Service Ekleme

```bash
# Angular CLI ile yeni service
ng generate service services/yeni-service
```

### Test

```bash
# Backend testleri
cd stok-takip-backend
.\mvnw.cmd test

# Frontend testleri
cd stok-takip-frontend/stok-takip-app
npm test
```

---

## 🔧 Yapılandırma

### Backend Yapılandırması

#### application.properties

```properties
# Veritabanı
spring.datasource.url=jdbc:mysql://localhost:3306/stok_takip
spring.datasource.username=root
spring.datasource.password=12345

# JPA
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect

# Server
server.port=8080
```

### Frontend Yapılandırması

#### environment.ts

```typescript
export const environment = {
  production: false,
  apiUrl: 'http://localhost:8080/api'
};
```

---

## 🐛 Sorun Giderme

### Yaygın Sorunlar

#### Backend Başlamıyor

- ✅ MySQL servisinin çalıştığından emin olun
- ✅ Veritabanı bağlantı bilgilerini kontrol edin
- ✅ Port 8080'in kullanılabilir olduğundan emin olun

#### Frontend Başlamıyor

- ✅ Node.js ve npm'in yüklü olduğundan emin olun
- ✅ `npm install` komutunu çalıştırın
- ✅ Port 4200'in kullanılabilir olduğundan emin olun

#### CORS Hatası

- ✅ Backend'deki CORS yapılandırmasını kontrol edin
- ✅ Frontend URL'inin CORS allowed origins listesinde olduğundan emin olun

#### Veritabanı Bağlantı Hatası

- ✅ MySQL servisinin çalıştığını kontrol edin
- ✅ Veritabanı kullanıcı adı ve şifresini kontrol edin
- ✅ Veritabanının oluşturulduğundan emin olun

---

## 📝 Notlar

### Güvenlik

- ⚠️ Production ortamında mutlaka gerçek authentication sistemi kullanın
- ⚠️ JWT token tabanlı authentication ekleyin
- ⚠️ HTTPS kullanın
- ⚠️ Veritabanı şifrelerini environment variable'larda saklayın

### Performans

- 📊 Büyük veri setleri için pagination kullanın
- 📊 Database index'leri ekleyin
- 📊 Caching mekanizması ekleyin

### Gelecek Geliştirmeler

- 📈 Swagger/OpenAPI dokümantasyonu
- 📈 Unit ve Integration testleri
- 📈 Docker containerization
- 📈 CI/CD pipeline
- 📈 Email bildirimleri
- 📈 Raporlama modülü
- 📈 Barcode scanner entegrasyonu

---

## 👥 Katkıda Bulunma

Katkılarınızı bekliyoruz! Lütfen şu adımları izleyin:

1. Fork edin
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Değişikliklerinizi commit edin (`git commit -m 'Add amazing feature'`)
4. Branch'inizi push edin (`git push origin feature/amazing-feature`)
5. Pull Request oluşturun

---

## 📄 Lisans

Bu proje özel kullanım için geliştirilmiştir.

---

## 👨‍💻 Geliştirici

**Selim Sercan Çınar**  
Senior Full Stack Java Developer

---

## 🙏 Teşekkürler

Bu projeyi kullandığınız için teşekkür ederiz! Sorularınız veya önerileriniz için issue açabilirsiniz.

---

<div align="center">

**⭐ Bu projeyi beğendiyseniz yıldız vermeyi unutmayın! ⭐**

Made with ❤️ using Angular & Spring Boot

</div>
