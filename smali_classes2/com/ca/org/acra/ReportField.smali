.class public final enum Lcom/ca/org/acra/ReportField;
.super Ljava/lang/Enum;
.source "ReportField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ca/org/acra/ReportField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/org/acra/ReportField;

.field public static final enum ANDROID_VERSION:Lcom/ca/org/acra/ReportField;

.field public static final enum APPLICATION_LOG:Lcom/ca/org/acra/ReportField;

.field public static final enum APP_VERSION_CODE:Lcom/ca/org/acra/ReportField;

.field public static final enum APP_VERSION_NAME:Lcom/ca/org/acra/ReportField;

.field public static final enum AVAILABLE_MEM_SIZE:Lcom/ca/org/acra/ReportField;

.field public static final enum BRAND:Lcom/ca/org/acra/ReportField;

.field public static final enum BUILD:Lcom/ca/org/acra/ReportField;

.field public static final enum CRASH_CONFIGURATION:Lcom/ca/org/acra/ReportField;

.field public static final enum CUSTOM_DATA:Lcom/ca/org/acra/ReportField;

.field public static final enum DEVICE_FEATURES:Lcom/ca/org/acra/ReportField;

.field public static final enum DEVICE_ID:Lcom/ca/org/acra/ReportField;

.field public static final enum DISPLAY:Lcom/ca/org/acra/ReportField;

.field public static final enum DROPBOX:Lcom/ca/org/acra/ReportField;

.field public static final enum DUMPSYS_MEMINFO:Lcom/ca/org/acra/ReportField;

.field public static final enum ENVIRONMENT:Lcom/ca/org/acra/ReportField;

.field public static final enum EVENTSLOG:Lcom/ca/org/acra/ReportField;

.field public static final enum EXCEPTION_CAUSE:Lcom/ca/org/acra/ReportField;

.field public static final enum EXCEPTION_CLASSNAME:Lcom/ca/org/acra/ReportField;

.field public static final enum EXCEPTION_LINENUMBER:Lcom/ca/org/acra/ReportField;

.field public static final enum EXCEPTION_METHODNAME:Lcom/ca/org/acra/ReportField;

.field public static final enum FILE_PATH:Lcom/ca/org/acra/ReportField;

.field public static final enum INITIAL_CONFIGURATION:Lcom/ca/org/acra/ReportField;

.field public static final enum INSTALLATION_ID:Lcom/ca/org/acra/ReportField;

.field public static final enum IS_SILENT:Lcom/ca/org/acra/ReportField;

.field public static final enum LOGCAT:Lcom/ca/org/acra/ReportField;

.field public static final enum MEDIA_CODEC_LIST:Lcom/ca/org/acra/ReportField;

.field public static final enum PACKAGE_NAME:Lcom/ca/org/acra/ReportField;

.field public static final enum PHONE_MODEL:Lcom/ca/org/acra/ReportField;

.field public static final enum PRODUCT:Lcom/ca/org/acra/ReportField;

.field public static final enum RADIOLOG:Lcom/ca/org/acra/ReportField;

.field public static final enum REPORT_ID:Lcom/ca/org/acra/ReportField;

.field public static final enum SETTINGS_SECURE:Lcom/ca/org/acra/ReportField;

.field public static final enum SETTINGS_SYSTEM:Lcom/ca/org/acra/ReportField;

.field public static final enum SHARED_PREFERENCES:Lcom/ca/org/acra/ReportField;

.field public static final enum STACK_TRACE:Lcom/ca/org/acra/ReportField;

.field public static final enum THREAD_DETAILS:Lcom/ca/org/acra/ReportField;

.field public static final enum TOTAL_MEM_SIZE:Lcom/ca/org/acra/ReportField;

.field public static final enum USER_APP_START_DATE:Lcom/ca/org/acra/ReportField;

.field public static final enum USER_COMMENT:Lcom/ca/org/acra/ReportField;

.field public static final enum USER_CRASH_DATE:Lcom/ca/org/acra/ReportField;

.field public static final enum USER_EMAIL:Lcom/ca/org/acra/ReportField;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "REPORT_ID"

    invoke-direct {v0, v1, v3}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->REPORT_ID:Lcom/ca/org/acra/ReportField;

    .line 39
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "APP_VERSION_CODE"

    invoke-direct {v0, v1, v4}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->APP_VERSION_CODE:Lcom/ca/org/acra/ReportField;

    .line 45
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "APP_VERSION_NAME"

    invoke-direct {v0, v1, v5}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->APP_VERSION_NAME:Lcom/ca/org/acra/ReportField;

    .line 51
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "PACKAGE_NAME"

    invoke-direct {v0, v1, v6}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->PACKAGE_NAME:Lcom/ca/org/acra/ReportField;

    .line 57
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "FILE_PATH"

    invoke-direct {v0, v1, v7}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->FILE_PATH:Lcom/ca/org/acra/ReportField;

    .line 63
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "PHONE_MODEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->PHONE_MODEL:Lcom/ca/org/acra/ReportField;

    .line 69
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "ANDROID_VERSION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->ANDROID_VERSION:Lcom/ca/org/acra/ReportField;

    .line 75
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "BUILD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->BUILD:Lcom/ca/org/acra/ReportField;

    .line 81
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "BRAND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->BRAND:Lcom/ca/org/acra/ReportField;

    .line 87
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "PRODUCT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->PRODUCT:Lcom/ca/org/acra/ReportField;

    .line 91
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "TOTAL_MEM_SIZE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/ca/org/acra/ReportField;

    .line 95
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "AVAILABLE_MEM_SIZE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/ca/org/acra/ReportField;

    .line 100
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "CUSTOM_DATA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->CUSTOM_DATA:Lcom/ca/org/acra/ReportField;

    .line 104
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "STACK_TRACE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->STACK_TRACE:Lcom/ca/org/acra/ReportField;

    .line 108
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "EXCEPTION_CAUSE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->EXCEPTION_CAUSE:Lcom/ca/org/acra/ReportField;

    .line 109
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "EXCEPTION_CLASSNAME"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->EXCEPTION_CLASSNAME:Lcom/ca/org/acra/ReportField;

    .line 110
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "EXCEPTION_METHODNAME"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->EXCEPTION_METHODNAME:Lcom/ca/org/acra/ReportField;

    .line 111
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "EXCEPTION_LINENUMBER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->EXCEPTION_LINENUMBER:Lcom/ca/org/acra/ReportField;

    .line 119
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "INITIAL_CONFIGURATION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->INITIAL_CONFIGURATION:Lcom/ca/org/acra/ReportField;

    .line 125
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "CRASH_CONFIGURATION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->CRASH_CONFIGURATION:Lcom/ca/org/acra/ReportField;

    .line 131
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "DISPLAY"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->DISPLAY:Lcom/ca/org/acra/ReportField;

    .line 136
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "USER_COMMENT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->USER_COMMENT:Lcom/ca/org/acra/ReportField;

    .line 140
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "USER_APP_START_DATE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->USER_APP_START_DATE:Lcom/ca/org/acra/ReportField;

    .line 144
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "USER_CRASH_DATE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->USER_CRASH_DATE:Lcom/ca/org/acra/ReportField;

    .line 148
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "DUMPSYS_MEMINFO"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/ca/org/acra/ReportField;

    .line 153
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "DROPBOX"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->DROPBOX:Lcom/ca/org/acra/ReportField;

    .line 157
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "LOGCAT"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->LOGCAT:Lcom/ca/org/acra/ReportField;

    .line 161
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "EVENTSLOG"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->EVENTSLOG:Lcom/ca/org/acra/ReportField;

    .line 165
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "RADIOLOG"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->RADIOLOG:Lcom/ca/org/acra/ReportField;

    .line 169
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "IS_SILENT"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->IS_SILENT:Lcom/ca/org/acra/ReportField;

    .line 173
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "DEVICE_ID"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->DEVICE_ID:Lcom/ca/org/acra/ReportField;

    .line 178
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "INSTALLATION_ID"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->INSTALLATION_ID:Lcom/ca/org/acra/ReportField;

    .line 183
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "USER_EMAIL"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->USER_EMAIL:Lcom/ca/org/acra/ReportField;

    .line 187
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "DEVICE_FEATURES"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->DEVICE_FEATURES:Lcom/ca/org/acra/ReportField;

    .line 191
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "ENVIRONMENT"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->ENVIRONMENT:Lcom/ca/org/acra/ReportField;

    .line 195
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "SETTINGS_SYSTEM"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->SETTINGS_SYSTEM:Lcom/ca/org/acra/ReportField;

    .line 199
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "SETTINGS_SECURE"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->SETTINGS_SECURE:Lcom/ca/org/acra/ReportField;

    .line 203
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "SHARED_PREFERENCES"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->SHARED_PREFERENCES:Lcom/ca/org/acra/ReportField;

    .line 210
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "APPLICATION_LOG"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->APPLICATION_LOG:Lcom/ca/org/acra/ReportField;

    .line 214
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "MEDIA_CODEC_LIST"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->MEDIA_CODEC_LIST:Lcom/ca/org/acra/ReportField;

    .line 218
    new-instance v0, Lcom/ca/org/acra/ReportField;

    const-string v1, "THREAD_DETAILS"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/ReportField;->THREAD_DETAILS:Lcom/ca/org/acra/ReportField;

    .line 28
    const/16 v0, 0x29

    new-array v0, v0, [Lcom/ca/org/acra/ReportField;

    sget-object v1, Lcom/ca/org/acra/ReportField;->REPORT_ID:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ca/org/acra/ReportField;->APP_VERSION_CODE:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ca/org/acra/ReportField;->APP_VERSION_NAME:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ca/org/acra/ReportField;->PACKAGE_NAME:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ca/org/acra/ReportField;->FILE_PATH:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ca/org/acra/ReportField;->PHONE_MODEL:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ca/org/acra/ReportField;->ANDROID_VERSION:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ca/org/acra/ReportField;->BUILD:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ca/org/acra/ReportField;->BRAND:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ca/org/acra/ReportField;->PRODUCT:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ca/org/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ca/org/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ca/org/acra/ReportField;->CUSTOM_DATA:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ca/org/acra/ReportField;->STACK_TRACE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ca/org/acra/ReportField;->EXCEPTION_CAUSE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ca/org/acra/ReportField;->EXCEPTION_CLASSNAME:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ca/org/acra/ReportField;->EXCEPTION_METHODNAME:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ca/org/acra/ReportField;->EXCEPTION_LINENUMBER:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ca/org/acra/ReportField;->INITIAL_CONFIGURATION:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ca/org/acra/ReportField;->CRASH_CONFIGURATION:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/ca/org/acra/ReportField;->DISPLAY:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/ca/org/acra/ReportField;->USER_COMMENT:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/ca/org/acra/ReportField;->USER_APP_START_DATE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/ca/org/acra/ReportField;->USER_CRASH_DATE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/ca/org/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/ca/org/acra/ReportField;->DROPBOX:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/ca/org/acra/ReportField;->LOGCAT:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/ca/org/acra/ReportField;->EVENTSLOG:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/ca/org/acra/ReportField;->RADIOLOG:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/ca/org/acra/ReportField;->IS_SILENT:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/ca/org/acra/ReportField;->DEVICE_ID:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/ca/org/acra/ReportField;->INSTALLATION_ID:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/ca/org/acra/ReportField;->USER_EMAIL:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/ca/org/acra/ReportField;->DEVICE_FEATURES:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/ca/org/acra/ReportField;->ENVIRONMENT:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/ca/org/acra/ReportField;->SETTINGS_SYSTEM:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/ca/org/acra/ReportField;->SETTINGS_SECURE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/ca/org/acra/ReportField;->SHARED_PREFERENCES:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/ca/org/acra/ReportField;->APPLICATION_LOG:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/ca/org/acra/ReportField;->MEDIA_CODEC_LIST:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/ca/org/acra/ReportField;->THREAD_DETAILS:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ca/org/acra/ReportField;->$VALUES:[Lcom/ca/org/acra/ReportField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/org/acra/ReportField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/ca/org/acra/ReportField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ca/org/acra/ReportField;

    return-object v0
.end method

.method public static values()[Lcom/ca/org/acra/ReportField;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ca/org/acra/ReportField;->$VALUES:[Lcom/ca/org/acra/ReportField;

    invoke-virtual {v0}, [Lcom/ca/org/acra/ReportField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/org/acra/ReportField;

    return-object v0
.end method
