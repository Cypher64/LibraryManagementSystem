from django.shortcuts import render
from django.contrib import admin
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.db.models import Q
from .models import *

def home(request):
    return render(request, "home.html", context={"current_tab" : "home"})

def readers(request):
    return render(request, "readers.html", context={"current_tab" : "readers"})

def books(request):
    return render(request, "books.html", context={"current_tab" : "books"})

def loans(request):
    return render(request, "loans.html", context={"current_tab" : "loans"})

def returns(request):
    return render(request, "return.html", context={"current_tab" : "returns"})

def Readers_tab(request):
    if request.method == "GET":
        readers_s = Readers.objects.all()
        return render(request, "readers.html", context={"current_tab": "readers", "readers_s": readers_s})
    else:
        query = request.POST.get('query', '')
        readers_s = Readers.objects.filter(Q(firstname__icontains=query) | Q(lastname__icontains=query) | Q(email__icontains=query) | Q(phone__icontains=query))
        return render(request, "readers.html", context={"current_tab": "readers", "readers_s": readers_s, "query": query})


def save_readers(request):
    readers_item = Readers(firstname=request.POST['first_name'],
                           lastname=request.POST['last_name'],
                           email=request.POST['email'],
                           phone=request.POST['phone']
                           )
    readers_item.save()
    return redirect('/readers')

from django.db.models import Q

def Book_tab(request):
    if request.method == "GET":
        books = Book.objects.all()
        genres = Genre.objects.all()
        publishers = Publishing.objects.all()
        return render(request, "books.html", context={"current_tab": "books", "books": books, "genres": genres, "publishers": publishers})
    else:
        query = request.POST.get('query')
        books = Book.objects.filter(
            Q(title__icontains=query) |
            Q(genre__name__icontains=query) |
            Q(publishing__name__icontains=query) |
            Q(year__icontains=query) |
            Q(authors__lastname__icontains=query) | 
            Q(authors__firstname__icontains=query)
        ).distinct()
        
        genres = Genre.objects.all()
        publishers = Publishing.objects.all()
        return render(request, "books.html", context={"current_tab": "books", "books": books, "genres": genres, "publishers": publishers, "query": query})


def add_book(request):
    if request.method == "POST":
        title = request.POST['title']
        genre_id = request.POST['genre']
        publisher_id = request.POST['publisher']
        year = request.POST['year']
        author_ids = request.POST.getlist('authors')

        genre = Genre.objects.get(id=genre_id)
        publisher = Publishing.objects.get(id=publisher_id)
        authors = Author.objects.filter(id__in=author_ids)

        book = Book.objects.create(title=title, genre=genre, publishing=publisher, year=year)
        book.authors.set(authors)

        return redirect('Book_tab')
    else:
        genres = Genre.objects.all()
        publishers = Publishing.objects.all()
        authors = Author.objects.all()
        return render(request, "add_book.html", context={"genres": genres, "publishers": publishers, "authors": authors})
    
def loan_preview(request, book_ids):
    book_list = Book.objects.filter(id__in=book_ids)
    return render(request, 'loans.html', {'books': book_list, 'count': len(book_list)})

def returns(request):
    loans = Loans.objects.filter(returndate__isnull=True).select_related('readers', 'book')
    context = {
        "current_tab": "returns",
        "loans": loans,
    }
    return render(request, "return.html", context)