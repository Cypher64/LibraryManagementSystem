# Database practice project

This project was created for a training practice in databases. This project was written using django, the main goal was to develop the database architecture and implement the interface for easy operation. 

The user (librarian) can make a step by step:
- Register and search readers
- Add and search books
- Check who has borrowed what books
- Arrange the return of the book

To install the project, you need to copy the repository:
```
git clone https://github.com/Cypher64/LibraryManagementSystem.git
cd ./LibraryManagementSystem
cd ./LMS
```
Create venv:
```
python3 -m venv venv
```
Install all the necessary dependencies:
```
pip install -m requirements.txt
```
After that, you need to import the database into mysql (if you don't have mysql, you need to install or run it in a docker container):
```
mysql -u user -p LibraryDB < ./library.sql
```
And finaly run project:
```
python3 manage.py runserver 8080
```
## Screenshots of the project:
- Home page
<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/5dbaf417-7603-4292-8574-cdc3c1386663" />

- Readers page
<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/f3636c2b-d74f-4a11-87d9-76b613923137" />

- Books page
<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/7cd361a8-e26d-4e7d-807b-4a0cd06c19c1" />

- Loans page
<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/623dcd12-0973-4136-beb1-03bec77dff40" />

- Returns page
<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/557b94de-b536-472e-ba55-0e16d7eeec10" />
