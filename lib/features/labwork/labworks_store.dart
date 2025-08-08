import 'package:apexo/features/login/login_controller.dart';
import 'package:apexo/services/archived.dart';
import 'package:apexo/services/launch.dart';
import 'package:apexo/services/network.dart';
import 'package:apexo/utils/hash.dart';
import 'package:apexo/utils/demo_generator.dart';

import '../../core/save_local.dart';
import '../../core/save_remote.dart';
import '../network_actions/network_actions_controller.dart';
import '../../services/login.dart';
import 'labwork_model.dart';
import '../../core/store.dart';

const _storeName = "labworks";

class Labworks extends Store<Labwork> {
  Labworks()
      : super(
          modeling: Labwork.fromJson,
          isDemo: launch.isDemo,
          showArchived: showArchived,
          onSyncStart: () {
            networkActions.isSyncing(networkActions.isSyncing() + 1);
          },
          onSyncEnd: () {
            networkActions.isSyncing(networkActions.isSyncing() - 1);
          },
        );

  @override
  init() {
    super.init();
    login.activators[_storeName] = () async {
      await loaded;

      local = SaveLocal(name: _storeName, uniqueId: simpleHash(login.url));
      await deleteMemoryAndLoadFromPersistence();

      if (launch.isDemo) {
        if (docs.isEmpty) setAll(demoLabworks(25));
      } else {
        remote = SaveRemote(
          pbInstance: login.pb!,
          storeName: _storeName,
          onOnlineStatusChange: (current) {
            if (network.isOnline() != current) {
              network.isOnline(current);
            }
          },
        );
      }

      return () async {
        loginCtrl.loadingIndicator("Synchronizing labworks");
        await synchronize();
        networkActions.syncCallbacks[_storeName] = synchronize;
        networkActions.reconnectCallbacks[_storeName] = remote!.checkOnline;

        network.onOnline[_storeName] = synchronize;
        network.onOffline[_storeName] = cancelRealtimeSub;
      };
    };
  }

  List<String> get allLabs {
    Set<String> labs = {};
    for (var doc in docs.values) {
      labs.add(doc.lab);
    }
    return labs.toList();
  }

  List<String> get allPhones {
    Set<String> phones = {};
    for (var doc in docs.values) {
      phones.add(doc.phoneNumber);
    }
    return phones.toList();
  }

  String? getPhoneNumber(String lab) {
    for (var doc in docs.values) {
      if (doc.lab == lab) {
        return doc.phoneNumber;
      }
    }
    return null;
  }
}

final labworks = Labworks();
