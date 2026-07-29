const admin = require("firebase-admin/app");
admin.initializeApp();

const dailyReset = require("./daily_reset.js");
exports.dailyReset = dailyReset.dailyReset;
const dailyArchive = require("./daily_archive.js");
exports.dailyArchive = dailyArchive.dailyArchive;
const sendTopicPush = require("./send_topic_push.js");
exports.sendTopicPush = sendTopicPush.sendTopicPush;
const subscribeToWardTopic = require("./subscribe_to_ward_topic.js");
exports.subscribeToWardTopic = subscribeToWardTopic.subscribeToWardTopic;
const unsubscribeFromWardTopic = require("./unsubscribe_from_ward_topic.js");
exports.unsubscribeFromWardTopic =
  unsubscribeFromWardTopic.unsubscribeFromWardTopic;
const sendTargetedPush = require("./send_targeted_push.js");
exports.sendTargetedPush = sendTargetedPush.sendTargetedPush;
