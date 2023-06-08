class Contact {
  int _id = 0;
  String _title = '';
  String _description = '';

  // konstruktor 1
  Contact(this._title, this._description);

  // konstruktor 2: konversi dari Map ke Contact
  Contact.fromMap(Map<String, dynamic> map){
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
  }

  // getter
  int get id => _id;
  String get title => _title;
  String get description => _description;

  // setter
  set title(String value){
    _title = value;
  }

  set description(String value){
    _description = value;
  }

  // konversi dari Contact ke Map
  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = Map<String, dynamic>();    
    map['title'] = this._title;
    map['description'] = this._description;
    return map;
  }
}