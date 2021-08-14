import webpush from "web-push"
import { Notification } from "../proto/xsuportal/resources/notification_pb"

const WEBPUSH_SUBJECT = "xsuportal-debug@example.com"
interface VapidKey {
  privateKey: string
  publicKey: string
}

export const sendWebpush = async (
  vapidKey: VapidKey,
  notification: Notification,
  pushSubscription
) => {
  const message = Buffer.from(notification.serializeBinary()).toString("base64")
  const requestOpts: webpush.RequestOptions = {
    vapidDetails: {
      subject: `mailto:${WEBPUSH_SUBJECT}`,
      ...vapidKey,
    },
  }

  const subscription: webpush.PushSubscription = {
    endpoint: pushSubscription.endpoint,
    keys: {
      p256dh: pushSubscription.p256dh,
      auth: pushSubscription.auth,
    },
  }
  const result = await webpush.sendNotification(
    subscription,
    message,
    requestOpts
  )
  return result
}
