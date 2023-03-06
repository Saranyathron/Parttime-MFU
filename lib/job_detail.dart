import 'package:flutter/material.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({Key? key, required this.job}) : super(key: key);

  final String job;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(job),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Job details for $job',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
