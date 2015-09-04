library keygen;

import 'dart:io';
import 'dart:async';

import 'package:uuid/uuid.dart';
import "package:redis_client/redis_client.dart";

import "session_json.dart";

enum ReqPerms {
  full,
  read,
  write,
  delete,
  login,
  unknown
}

var sessionStore = "localhost:6379";

String _getNewUuid() {
  var uuid = new Uuid();
  return uuid.v4();
}

Future<String> getLoginKey(String pubKey) async {
  if (Platform.isLinux) {
    RedisClient cl = await RedisClient.connect(sessionStore);
    String uuid = _getNewUuid();
    SessionJson sessionInfo = new SessionJson(uuid, pubKey, SessionType.client, [ReqPerms.login]);
    await cl.setex(uuid, 500, sessionInfo.toString());
    return (await cl.get(uuid));
  } else {
    return _getNewUuid();
  }
}

Future<String> getUserKey(String sessionKey) async {
  if (Platform.isLinux) {
    RedisClient cl = await RedisClient.connect(sessionStore);

    String clientData = await cl.get(sessionKey);
    SessionJson clientSession = new SessionJson.fromJSON(clientData);
    String pubKey = clientSession.pubKey;

    String uuid = _getNewUuid();
    SessionJson sessionInfo = new SessionJson(uuid, pubKey, SessionType.user, [ReqPerms.read, ReqPerms.write]);
    await cl.setex(uuid, 100, sessionInfo.toString());
    return (await cl.get(uuid));
  } else {
    return _getNewUuid();   //On Windows, generate a random ID, and return that instead of doing anything useful.
                            //I blame Redis for not having a Windows version.
  }
}

List<ReqPerms> getPerms(String key) {
  RedisClient.connect(sessionStore)
  .then((RedisClient client) {
    client.get(key)
    .then((val) => val);
  });
}

bool hasPerm(String key, ReqPerms perm) {
  return true;
}