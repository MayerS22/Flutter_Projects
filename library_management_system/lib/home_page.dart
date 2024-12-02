import 'package:flutter/material.dart';
import 'details_page.dart';
import 'models/book.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Book> books = [];
  final TextEditingController _bookController = TextEditingController();
  String _selectedGenre = "Fiction";
  final List<String> genres = ["Fiction", "Non-Fiction", "Mystery", "Sci-Fi", "Biography"];

  // Add a new book
  void _addBook() {
    String bookName = _bookController.text.trim();

    if (bookName.isEmpty) {
      _showSnackBar("Book name cannot be empty!");
    } else if (books.any((book) => book.name == bookName)) {
      _showSnackBar("Book already exists!");
    } else {
      setState(() {
        books.add(Book(name: bookName, genre: _selectedGenre));
      });
      _bookController.clear();
      Navigator.of(context).pop();
    }
  }

  // Show a snack bar message
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  // Delete a book
  void _deleteBook(int index) {
    setState(() {
      books.removeAt(index);
    });
  }

  // Open the dialog to add a new book
  void _openAddBookDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add a Book", style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _bookController,
                decoration: InputDecoration(
                  labelText: "Book Name",
                  labelStyle: TextStyle(color: Colors.teal),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                ),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField(
                value: _selectedGenre,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedGenre = newValue!;
                  });
                },
                items: genres.map((genre) {
                  return DropdownMenuItem(value: genre, child: Text(genre));
                }).toList(),
                decoration: InputDecoration(
                  labelText: "Genre",
                  labelStyle: TextStyle(color: Colors.teal),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.of(context).pop(), child: Text("Cancel")),
            ElevatedButton(
              onPressed: _addBook,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: Text("Add", style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Library Management", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Total Books: ${books.length}",
              style: TextStyle(fontSize: 18, color: Colors.teal),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(book: books[index]),
                    ),
                  ),
                  onDoubleTap: () => _deleteBook(index),
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 3,
                    child: ListTile(
                      title: Text(books[index].name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      subtitle: Text("Genre: ${books[index].genre}", style: TextStyle(color: Colors.grey)),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openAddBookDialog,
        backgroundColor: Colors.teal,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
