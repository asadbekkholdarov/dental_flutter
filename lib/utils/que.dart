import 'dart:async';

class TaskQueue {
  final _taskQueue = <Future Function()>[];
  bool _isProcessing = false;
  final Duration delayBetweenTasks;

  TaskQueue({this.delayBetweenTasks = const Duration(milliseconds: 250)});

  Future<T> add<T>(Future<T> Function() task) {
    final completer = Completer<T>();

    _taskQueue.add(() async {
      try {
        final result = await task();
        completer.complete(result);
      } catch (error, stackTrace) {
        completer.completeError(error, stackTrace);
      }
    });

    _processQueue();
    return completer.future;
  }

  void _processQueue() async {
    if (_isProcessing || _taskQueue.isEmpty) return;

    _isProcessing = true;
    while (_taskQueue.isNotEmpty) {
      final task = _taskQueue.removeAt(0);
      await task();
      if (_taskQueue.isNotEmpty) {
        await Future.delayed(delayBetweenTasks); // Add delay between tasks
      }
    }
    _isProcessing = false;
  }
}

final demoAvatarRequestQue = TaskQueue();
