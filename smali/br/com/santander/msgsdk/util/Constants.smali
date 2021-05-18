.class public Lbr/com/santander/msgsdk/util/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static EMPTY:Ljava/lang/String; = null

.field public static final ENDPOINT_CONFIG_PANEL:Ljava/lang/String; = "messaging-internet/v1/checkCategoryMembership"

.field public static final ENDPOINT_CONFIG_PANEL_UPDATE:Ljava/lang/String; = "messaging-internet/v1/update-category"

.field public static final ENDPOINT_NOTIFICATIONS:Ljava/lang/String; = "messaging-internet/v1/list-notification"

.field public static final ENDPOINT_NOTIFICATION_READ_DELETED:Ljava/lang/String; = "messaging-internet/v1/update-notification-status"

.field public static final ENDPOINT_UPDATE_STATUS:Ljava/lang/String; = "push/v1/status"

.field public static GCM_PREFERENCES:Ljava/lang/String; = null

.field public static GCM_VALUE_PREFERENCES:Ljava/lang/String; = null

.field public static final JSON_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final NOTIFICATIONS_PAGE_NUMBER:Ljava/lang/String; = "1"

.field public static PREFERENCES_NOTIFICATIONS_UNREAD_KEY:Ljava/lang/String; = null

.field public static PREFERENCES_NOTIFICATIONS_UNREAD_VALUE:Ljava/lang/String; = null

.field public static final SP_UT:Ljava/lang/String; = "sput"

.field public static final SP_UT_FILENAME:Ljava/lang/String; = "spUtFile"

.field public static STATUS_KEY:Ljava/lang/String;

.field public static STATUS_PREFERENCES:Ljava/lang/String;

.field public static SUBSCRIBE_KEY:Ljava/lang/String;

.field public static SUBSCRIBE_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "gcmPreferences"

    sput-object v0, Lbr/com/santander/msgsdk/util/Constants;->GCM_PREFERENCES:Ljava/lang/String;

    .line 9
    const-string v0, "gcmValuePreferences"

    sput-object v0, Lbr/com/santander/msgsdk/util/Constants;->GCM_VALUE_PREFERENCES:Ljava/lang/String;

    .line 10
    const-string v0, "prefStatus"

    sput-object v0, Lbr/com/santander/msgsdk/util/Constants;->STATUS_PREFERENCES:Ljava/lang/String;

    .line 11
    const-string v0, "status"

    sput-object v0, Lbr/com/santander/msgsdk/util/Constants;->STATUS_KEY:Ljava/lang/String;

    .line 12
    const-string v0, "subscribePref"

    sput-object v0, Lbr/com/santander/msgsdk/util/Constants;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 13
    const-string v0, "subscribeValue"

    sput-object v0, Lbr/com/santander/msgsdk/util/Constants;->SUBSCRIBE_VALUE:Ljava/lang/String;

    .line 14
    const-string v0, ""

    sput-object v0, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    .line 27
    const-string v0, "unreadNotificationsKey"

    sput-object v0, Lbr/com/santander/msgsdk/util/Constants;->PREFERENCES_NOTIFICATIONS_UNREAD_KEY:Ljava/lang/String;

    .line 28
    const-string v0, "unreadNotificationsValue"

    sput-object v0, Lbr/com/santander/msgsdk/util/Constants;->PREFERENCES_NOTIFICATIONS_UNREAD_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
