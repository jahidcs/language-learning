import 'dart:io';

class ToDo {
  var id;
  String? date;
  String? title;
  String? details;
  String? status;

  ToDo(id, date, title, details, status) {
    this.id = id;
    this.date = date;
    this.title = title;
    this.details = details;
    this.status = status;
  }

  taskPackaging(id, date, title, details, status) {
    Map pack = {
      'id': id,
      'date': date,
      'title': title,
      'details': details,
      'status': status
    };
    return pack;
  }
}

void titlePrint() {
  print('''
  \n
          To Do App        
  \n
  ''');
}

void printInstructions() {
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
}

void main() {
  var allTask = [];
  while (true) {
    stdout.write("What you want to do?(a/v/v-all/e/d) ");
    final command = stdin.readLineSync();

    if (command == 'a' ||
        command == 'v' ||
        command == 'v-all' ||
        command == 'e' ||
        command == 'd') {
      if (command == 'a') {
        print("Add in your task list\n");

        stdout.write("Enter task ID: ");
        var id = stdin.readLineSync();

        stdout.write("Enter date: ");
        var date = stdin.readLineSync();

        stdout.write("Enter task title: ");
        var title = stdin.readLineSync();

        stdout.write("Enter task details: ");
        var details = stdin.readLineSync();

        String? status;
        bool isCompleted = false;

        if (isCompleted == false) {
          status = 'Pending';
        } else {
          status = 'Completed';
        }

        var task = ToDo(id, date, title, details, status);
        allTask.add(task.taskPackaging(id, date, title, details, status));
      } else if (command == 'v') {
        print('''
                -----------------------
                  Customize view
                -----------------------
            ''');
        if (allTask.length == 0) {
          print("No Task to view");
        } else {
          stdout.write('Enter Task ID: ');
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
              stdout.write('Mark as done?(y/n): ');
              var discission = stdin.readLineSync();
              if (discission == 'y') {
                allTask[i]['status'] = 'Completed';
              } else {
                print('okay!!');
              }
            }
          }
        }
      } else if (command == 'v-all') {
        if (allTask.length != 0) {
          print('''
                -----------------------
                  Your tasks
                -----------------------
            ''');
          for (int i = 0; i < allTask.length; i++) {
            print('''
                ID: ${allTask[i]['id']}
                Date: ${allTask[i]['date']}
                Title: ${allTask[i]['title']}
                Details: ${allTask[i]['details']}
                Status: ${allTask[i]['status']}
                \n
            ''');
          }
        } else {
          print("Task queue is empty");
        }
      } else if (command == 'e') {
        if (allTask.length == 0) {
          print("No Task exist!!!");
        } else {
          print('''
                -----------------------
                  Update/Edit your task
                -----------------------
            ''');

          stdout.write("Enter Task ID: ");
          var taskId = stdin.readLineSync();

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
      }
    } else if (command == 'q') {
      print('\n\nSee you again :)');
      break;
    } else {
      print("Enter valid command");
    }
  }
}
