Stack(
            children: <Widget>[
              SlidingUpPanel(
                color: Colors.teal,
                panel: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Request',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                collapsed: Container(
                  child: Center(
                    child: Text('Second Sliding Widget request', style: TextStyle(color: Colors.black),),
                  ),
                ),
                body: Center(
                  child: Text('This is the Widget behind the sliding panel request', style: TextStyle(color: Colors.black)),
                ),
                borderRadius: BorderRadius.circular(20),
                minHeight: 200,
                maxHeight: 700,
              ),
              SlidingUpPanel(
                color: Colors.blue,
                backdropColor: Colors.red,
                panel: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Send',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                collapsed: Container(
                  child: Center(
                    child: Text('Second Sliding Widget send', style: TextStyle(color: Colors.black),),
                  ),
                ),
                // body: Center(
                //   child: Text('This is the Widget behind the sliding panel send'),
                // ),
                borderRadius: BorderRadius.circular(20),
                minHeight: 150,
                maxHeight: 650,
              ),
              SlidingUpPanel(
                color: Colors.redAccent,
                panel: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Dashboard',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                collapsed: Container(
                  child: Center(
                    child: Text('Second Sliding Widget dashboard', style: TextStyle(color: Colors.black),),
                  ),
                ),
                body: Container(
                  child: Center(
                    child: Text('This is the Widget behind the sliding panel dashboard'),
                  ),
                ),
                borderRadius: BorderRadius.circular(20),
                minHeight: 100,
                maxHeight: 600,
              ),
            ],
          ),