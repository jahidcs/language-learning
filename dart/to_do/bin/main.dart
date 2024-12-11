import 'dart:io';

void main() {
  bool enter = false;
  List allTask = [];
  Map task = {};

  print("===============To Do===============");

  stdout.write("Do you enter the app?(y/n): ");
  final confirm = stdin.readLineSync();

  if (confirm == 'y') {
    enter = true;
    print('Enter the app ...');
  } else {
    enter = false;
    print("Exiting ...");
  }

  while (enter == true) {
    print('============Welcome to todo app============');
    print('''
          ---------------------------
            Instructions
          ---------------------------
          For add press a
          For edit/update press e/u   
          For delete press d
          For back to root press n
          For task view press v
          To see all task type v-all
          Press q to quit the app
          ---------------------------
    ''');
    stdout.write("What you want to do?(a/e/d/v): ");
    final command = stdin.readLineSync();

    if (command == 'a' ||
        command == 'e' ||
        command == 'd' ||
        command == "v-all" ||
        command == "u" ||
        command == 'v') {
      if (command == 'a') {
        print("Add task in your to do list");
        stdout.write("Enter the task id: ");
        var id = stdin.readLineSync();

        stdout.write("Enter the date: ");
        var date = stdin.readLineSync();

        stdout.write("Enter the task title: ");
        var title = stdin.readLineSync();

        stdout.write("Enter the details: ");
        var details = stdin.readLineSync();

        bool isComplete = false;
        late String status;
        if (isComplete == true) {
          status = 'Done';
        } else {
          status = 'Pending';
        }

        task = new Map();
        task['id'] = id;
        task['date'] = date;
        task['title'] = title;
        task['details'] = details;
        task['status'] = status;

        print('Adding the task.....');
        allTask.add(task);
        print('Task added!!!');

        print('''
              ======Preview=====
              ID: $id
              Date: $date
              Title: $title
              Details: $details
              Status: $status
        ''');
      } else if (command == 'e' || command == 'u') {
        stdout.write("Enter Task ID: ");
        var taskId = stdin.readLineSync();

        if (allTask.length == 0) {
          print("No Task exist!!!");
        } else {
          for (var i = 0; i < allTask.length; i++) {
            if (allTask[i]['id'] == taskId) {
              stdout.write("Which part you want to change? ");
              var action = stdin.readLineSync();
              stdout.write("Enter $action: ");
              var changeText = stdin.readLineSync();
              allTask[i]['$action'] = changeText;
              print('''
                    -----------------
                    Change applied !!
                    -----------------
              ''');
              break;
            } else {
              print("Task is not exist yet");
            }
          }
        }
      } else if (command == 'd') {
        if (allTask.length == 0) {
          print("Task list is already empty");
        } else {
          stdout.write("Enter the id to delete: ");
          var id = stdin.readLineSync();

          for (var i = 0; i < allTask.length; i++) {
            if (allTask[i]['id'] == id) {
              allTask.remove(allTask[i]);
              print("Task deleted");
              break;
            } else {
              print('searching the id');
            }
          }
        }
      } else if (command == 'v-all') {
        print("====================Tasks====================");
        // print(allTask);
        for (var i = 0; i < allTask.length; i++) {
          print('''
                ID: ${allTask[i]['id']}
                Date: ${allTask[i]['date']}
                Title: ${allTask[i]['title']}
                Details: ${allTask[i]['details']}
                Status: ${allTask[i]['status']}
                \n
          ''');
        }
      } else if (command == 'v') {
        print("Custom view of the tasks");

        stdout.write('Enter task id: ');
        var search = stdin.readLineSync();

        for (var i = 0; i < allTask.length; i++) {
          if (allTask[i]['id'] == search) {
            print('''
                  ID: ${allTask[i]['id']}
                  Date: ${allTask[i]['date']}
                  Title: ${allTask[i]['title']}
                  Details: ${allTask[i]['details']}
                  Status: ${allTask[i]['status']}
                  \n
            ''');
          }
        }
      }
    } else if (command == 'q') {
      print("Good Bye !!!");
      enter = false;
    } else if (command == 'n') {
      print('back to home');
    } else {
      print('''
            Enter valid command
            Do you want to quit the app? (press q then enter)
      ''');
    }
  }
}
