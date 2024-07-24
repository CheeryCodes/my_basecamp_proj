# Welcome to MyBasecamp2

The project is hosted on the cloud. You can access it via the following link:
[MyBasecamp Live](https://mybasecamp-543o.onrender.com)



## What is Basecamp?
Basecamp is a web-based project management tool launched in 2004. Its primary features include to-do lists, milestone management, forum-like messaging, file sharing, and time tracking.

## Project Overview
MyBasecamp is a web application inspired by Basecamp, aiming to replicate its core features. This project is divided into three parts, with the goal of allowing users to create accounts, manage projects, and interact with various project elements.

## Task
The challenge is to create a project management tool that mimics Basecamp's features. The application will have a database, backend, and frontend. 

## Description
MyBasecamp is implemented in two phases:

### Phase 1 - Core Features

- **User Management**
  - **User Registration**: Users can create an account.
  - **User Management**: Users can view their profile, delete their account, and manage their information.
  - **Session Management**: Users can sign in and sign out.
  - **Role Permissions**: Users can be assigned or removed from admin roles.

- **Project Management**
  - **Project Management**: Users can create, view, edit, and delete projects.

### Phase 2 - Enhanced Features

- **Attachment Management**
  - **Attachments**: Users associated with a project can create and delete attachments. Attachments can be in formats like png, jpg, pdf, or txt.

- **Thread Management**
  - **Threads**: Only project admins can create, edit, or delete threads. (you can set admin at the edit project page)

- **Message Management**
  - **Messages**: Any user associated with a project can create, edit, or delete messages within a thread.

## Installation
To set up and run MyBasecamp locally, follow these steps:

1. **Clone the Repository**
   ```bash
   git clone https://git.us.qwasar.io/my_basecamp_2_169527_ksdkze/my_basecamp_2.git
   ```
   
2. **Navigate to the Project Directory**
   ```bash
   cd my_basecamp_2
   ```

3. **Install Dependencies**
   ```bash
   bundle install
   ```

4. **Set Up the Database**
   ```bash
   rake db:create
   rake db:migrate
   ```

5. **Start the Application**
   ```bash
   rails server
   ```

## Usage
To use MyBasecamp, open your browser and navigate to `http://localhost:3000`. You can create a new user account, log in, manage projects, and interact with threads and messages.

## Hosted Application
The project is hosted on the cloud. You can access it via the following link:
[MyBasecamp Live](https://mybasecamp-543o.onrender.com)

## The Core Team

Esther Nehemiah Amos


