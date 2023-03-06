import 'package:flutter/material.dart';
import 'job_detail.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String? _selectedJob;

  void _selectJob(String job) {
    setState(() {
      _selectedJob = job;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => JobDetail(job: job)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Job'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 16.0),
              Text(
                'Select a part-time job:',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _selectJob('KFC'),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-s/06/a4/b3/f2/kfc-kentucky-fried-chicken.jpg',
                      width: 200.0,
                      height: 100.0,
                    ),
                    const Text('KFC'),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _selectJob('Swensen'),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-s/15/c6/8a/c9/great-desserts-and-great.jpg',
                      width: 200.0,
                      height: 100.0,
                    ),
                    const Text('Swensen'),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _selectJob('McDonald\'s'),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://s41230.pcdn.co/wp-content/uploads/2021/12/McDonalds-Net-Zero-restaurant-HEADER.jpg',
                      width: 200.0,
                      height: 100.0,
                    ),
                    const Text('McDonald\'s'),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _selectJob('Starbucks'),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://www.theromanpost.com/wp-content/uploads/2020/01/cropped-462570d6b6909de96e3348b64bfd26dd.png',
                      width: 200.0,
                      height: 100.0,
                    ),
                    const Text('Starbucks'),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _selectJob('Other'),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://content.gallup.com/origin/gallupinc/GallupSpaces/Production/Cms/POLL/ivnhtzaaskgfokng9nkyuw.jpg',
                      width: 200.0,
                      height: 100.0,
                    ),
                    const Text('Other'),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
