import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_copy/components/job_carousel.dart';
import '../components/job_list.dart';
import '../models/company.dart';
import '../models/job.dart';



class MainScreen extends StatelessWidget{
  MainScreen({Key? key}) : super(key: key);

  List<Job> forYouJobs = [
    Job(
      role: 'Product Designer',
      location: 'San Francisco, CA',
      company: Company(
        name: 'Google',
        urlLogo:
        'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
      ),
    ),
    Job(
      role: 'Frontend Web',
      location: 'Miami',
      company: Company(
        name: 'Netflix',
        urlLogo:
        'https://i.pinimg.com/originals/8c/74/0b/8c740bc13bd5a0a19c24d28dff98cbdd.png',
      ),
    ),
    Job(
      role: 'Mobile Developer',
      location: 'New York',
      company: Company(
        name: 'Amazon',
        urlLogo:
        'https://upload.wikimedia.org/wikipedia/commons/d/de/Amazon_icon.png',
      ),
    ),
  ];

  List<Job> recentJobs = [
    Job(
      role: 'UX Enginner',
      location: 'Mountain View, CA',
      company: Company(
        name: 'Apple',
        urlLogo:
        'https://i.pinimg.com/originals/1c/aa/03/1caa032c47f63d50902b9d34492e1303.jpg',
      ),
      isFavorite: true,
    ),
    Job(
      role: 'Motion Designer',
      location: 'New York, NY',
      company: Company(
        name: 'AirBnb',
        urlLogo:
        'https://menorcaaldia.com/wp-content/uploads/2018/02/air.jpg',
      ),
      isFavorite: true,
    ),
    Job(
      role: 'Python Developer',
      location: 'New York',
      company: Company(
        name: 'Amazon',
        urlLogo:
        'https://upload.wikimedia.org/wikipedia/commons/d/de/Amazon_icon.png',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(),
            _textsHeader(context),
            _forYou(context),
            _recent(context),
            const SizedBox(height: 50.0)
          ],
        ),
      ),
    );
  }

  Widget _customAppBar(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            iconSize: 40.0,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/slider.svg")
          ),
          Row(
            children: <Widget>[
              IconButton(
                  iconSize: 40.0,
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/search.svg")
              ),
              IconButton(
                  iconSize: 40.0,
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/settings.svg")
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _textsHeader(context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              "Hi Jade",
              style: Theme.of(context).textTheme.bodyLarge
          ),
          Text(
              "Find your next",
              style: Theme.of(context).textTheme.displayLarge
          ),
          Text(
            "design job",
            style: Theme.of(context).textTheme.displayMedium,
          )
        ],
      ),
    );
  }

  Widget _forYou(context){
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            "For You",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        JobCarousel(forYouJobs)
      ],
    );
  }

  Widget _recent(context){
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  "Recent",
                  style: Theme.of(context).textTheme.headlineMedium
              ),
              Text(
                  "See all",
                  style: Theme.of(context).textTheme.headlineSmall
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: JobList(recentJobs),
        )
      ],
    );
  }
}