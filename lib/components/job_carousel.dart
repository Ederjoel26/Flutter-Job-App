import "package:flutter/material.dart";
import "package:carousel_slider/carousel_slider.dart";
import "package:whatsapp_copy/components/item_job.dart";

import "../models/job.dart";

class JobCarousel extends StatelessWidget{
  final List<Job> jobs;
  const JobCarousel(this.jobs);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230.0
      ),
      items: jobs.map((e) => ItemJob(e, themeDark: jobs.indexOf(e) == 0 || jobs.indexOf(e) == 2)).toList(),
    );
  }
}