import 'package:flutter/material.dart';

import '../models/job.dart';

class ItemJob extends StatefulWidget {
  final Job job;
  final bool themeDark;
  ItemJob(this.job, {this.themeDark = false});

  @override
  _itemJobState createState() => _itemJobState();
}

class _itemJobState extends State<ItemJob>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom:20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _companyLogo(),
                  _favIcon()
                ],
              ),
              _infoJobTexts(context),
            ],
          ),
        )
      ),
    );
  }

  BoxDecoration _boxDecoration(context){
    return BoxDecoration(
      color: widget.themeDark ? Theme.of(context).primaryColor: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Colors.black45,
          offset: Offset(4.0, 4.0),
          blurRadius: 10.0
        ),
      ],
    );
  }

  Widget _companyLogo(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
            widget.job.company.urlLogo,
            width: 60.0,
        ),
      ),
    );
  }

  Widget _favIcon(){
    return GestureDetector(
      child: Icon(
          widget.job.isFavorite ? Icons.favorite : Icons.favorite_border,
          color: widget.themeDark ? Colors.white : Colors.grey
      ),
      onTap: (){
        setState(() {
          widget.job.isFavorite = !widget.job.isFavorite;
        });
      }
    );
  }

  Widget _infoJobTexts(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.job.company.name,
          style: TextStyle(
            fontSize: 15.0,
            color: widget.themeDark ? const Color(0XFFB7B7D2) : Colors.grey,
          )
        ),
        Text(
          widget.job.role,
          style: widget.themeDark
              ? Theme.of(context).textTheme.bodySmall
              : Theme.of(context).textTheme.headlineMedium
        ),
        const SizedBox(
          width: 3.0
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
              size: 15.0
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              widget.job.location,
              style: TextStyle(
                fontSize: 15.0,
                color: widget.themeDark ? const Color(0XFFB7B7D2) : Colors.grey,
              ),
            )
          ],
        )
      ],
    );
  }
}