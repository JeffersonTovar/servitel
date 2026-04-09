
# API REST - Gestión de Items

Proyecto desarrollado como prueba técnica para el cargo de Ingeniero Senior Backend.

## Tecnologías utilizadas

- PHP 8.2
- Laravel
- MySQL
- Laravel Sanctum (Autenticación)
- Docker & Docker Compose

---

## Instalación

1. Clonar el repositorio:

```bash
git clone git@github.com:JeffersonTovar/servitel.git
cd servitel
```
---

2. Levantar contenedores:

```bash
docker-compose up -d --build
```
---

3. Accesos

* API: http://localhost:8000
* phpMyAdmin: http://localhost:8080

4. Autenticación

Se implementó autenticación basada en tokens usando Laravel Sanctum.

### Registro

```json
POST /api/register

{
  "name": "User",
  "email": "user@test.com",
  "password": "123456"
}

```

### Login

POST /api/login

```json
{
  "email": "user@test.com",
  "password": "123456"
}
```

### Respuesta:

```json
{
  "token": "TOKEN"
}
```
---

5. Endpoints

### Items (requieren autenticación)

| Método | Endpoint        | Descripción     |
| ------ | --------------- | --------------- |
| GET    | /api/items      | Listar items    |
| GET    | /api/items/{id} | Obtener item    |
| POST   | /api/items      | Crear item      |
| PUT    | /api/items/{id} | Actualizar item |
| DELETE | /api/items/{id} | Eliminar item   |


6. API externa

GET /api/external-data

Este endpoint consume datos desde una API pública externa y los expone a través del sistema.

API utilizada:
https://jsonplaceholder.typicode.com/posts


7. Arquitectura

El proyecto sigue una estructura organizada basada en:

* Controllers
* Models
* Routes
* Migrations




