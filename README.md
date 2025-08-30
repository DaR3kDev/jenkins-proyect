# 🚀 Jenkins con Docker Compose (sin Unlock Wizard)

Este proyecto levanta un servidor **Jenkins LTS** en contenedor Docker usando `docker-compose`.  
Se incluye un `Dockerfile` y un script Groovy que crean automáticamente un usuario administrador, evitando el proceso de desbloqueo inicial con `initialAdminPassword`.

---

## 📂 Estructura de archivos


```markdown
.
├─ docker-compose.yml        # Contenedor Jenkins
├─ Dockerfile                # Imagen personalizada basada en jenkins
└─ default-user.groovy       # Script Groovy que crea usuario admin automáticamente
````

## ▶️ Uso

1. **Construir la imagen personalizada**:
   
```bash
   docker-compose up -d --build
````

3. **Acceder a Jenkins**:
   
   * URL: [[http://localhost:8080](http://localhost:8080/login?from=%2F)]
   * Usuario: `admin`
   * Contraseña: `admin123`
---


<img width="1919" height="987" alt="image" src="https://github.com/user-attachments/assets/15c638ec-ffcf-4b22-9a19-35aa181879a2" />
<img width="1916" height="976" alt="image" src="https://github.com/user-attachments/assets/3224cf47-3bba-4733-aebb-5ad3f80e230a" />
<img width="1908" height="989" alt="image" src="https://github.com/user-attachments/assets/0886abd5-64d1-4ffa-8b4a-e0b2e6d048ff" />



---

## ✨ Personalización

* Para cambiar usuario/contraseña por defecto, edita el archivo:

  * [`default-user.groovy`](./default-user.groovy)

```groovy
hudsonRealm.createAccount("admin", "admin123")
```
* Reemplaza `"admin"` y `"admin123"` por los valores que desees.
---
