# ✨ Inventory Management System

A robust Inventory Management System built with **Laravel 10** and **MySQL**, designed to streamline your inventory tracking, sales, and purchasing processes.

![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/1.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/2.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/3.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/4.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/5.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/6.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/7.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/8.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/9.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/10.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/11.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/12.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/13.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/14.png)
![Dashboard](https://github.com/30jsaha/Inventorio-AI-Tech/blob/master/ss/15.png)

## 🗂️ Database Design
The system is structured using a clear and efficient database schema:

![Database Diagram](https://github.com/fajarghifar/inventory-management-system/assets/71541409/0c7d4163-96f5-4724-8741-4615e52ecf98)

## 🌟 Key Features

- **POS (Point of Sale)**
- **Orders**
  - Pending Orders
  - Complete Orders
  - Pending Payments
- **Purchases**
  - All Purchases
  - Approval Process
  - Purchase Reports
- **Products Management**
- **Customer Records**
- **Supplier Management**

## 🚀 Quick Start

Follow these steps to set up the project locally:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/30jsaha/Inventorio-AI-Tech
    ```

2. **Navigate to the project folder:**

    ```bash
    cd inventory-management-system
    ```

3. **Install PHP dependencies:**

    ```bash
    composer install
    ```

4. **Copy `.env` configuration:**

    ```bash
    cp .env.example .env
    ```

5. **Generate application key:**

    ```bash
    php artisan key:generate
    ```

6. **Configure the database in the `.env` file** with your local credentials.

7. **Run database migrations and seed sample data:**

    ```bash
    php artisan migrate:fresh --seed
    ```

8. **Link storage for media files:**

    ```bash
    php artisan storage:link
    ```

9. **Install JavaScript and CSS dependencies:**

    ```bash
    npm install && npm run dev
    ```

10. **Start the Laravel development server:**

    ```bash
    php artisan serve
    ```

11. **Login using the default admin credentials:**

    - **Email:** `admin@admin.com`
    - **Password:** `password`

## 💡 Contributing

Have ideas to improve the system? Feel free to:

- Submit a **Pull Request (PR)**
- Create an **Issue** for feature requests or bugs

## 📄 License

Licensed under the [MIT License](LICENSE).

---

> Find me on [GitHub](https://github.com/30jsaha) &nbsp;&middot;&nbsp; [YouTube](https://www.youtube.com/@thecodeingz) &nbsp;&middot;&nbsp; [LinkedIn](https://www.linkedin.com/in/jsaha30/) &nbsp;&middot;&nbsp; [Website](https://www.jsaha.in/)

---
