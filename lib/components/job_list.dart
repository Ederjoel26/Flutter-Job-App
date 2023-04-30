import "package:flutter/material.dart";
import "package:whatsapp_copy/components/compact_item_job.dart";

import "../models/job.dart";

class JobList extends StatelessWidget{

  final List<Job> jobs;
  const JobList(this.jobs);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: jobs.length,
      itemBuilder: (context, index) => CompactItemJob(jobs[index]),
    );
  }
}