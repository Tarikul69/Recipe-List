class mymodel {
  final String name; 
  final String image;
  final double rating;
  final String totaltime;

  mymodel({required this.name, required this.image, required this.rating, required this.totaltime});

factory mymodel.fromJson(dynamic json)
{
return mymodel(
  name: json['name'] as String,
  image: json['image'][0]['hostedLargeUrl'] as String,
  rating: json['rating'] as double,
  totaltime:  json['totaltime'] as String
);
}

static List<mymodel> recipiesfromSnapshot(List snapshot){
  return snapshot.map((data){return mymodel.fromJson(data);}).toList();
}

@ override
String toString(){
  return 'network {name: $name, image: $image, rating: $rating, totaltime: $totaltime,}';
}
}