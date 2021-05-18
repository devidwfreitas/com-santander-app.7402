.class public final enum Lbgy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbgy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbgy;

.field public static final enum CHROME_CUSTOM_TAB:Lbgy;

.field public static final enum CLIENT_TOKEN:Lbgy;

.field public static final enum DEVICE_AUTH:Lbgy;

.field public static final enum FACEBOOK_APPLICATION_NATIVE:Lbgy;

.field public static final enum FACEBOOK_APPLICATION_SERVICE:Lbgy;

.field public static final enum FACEBOOK_APPLICATION_WEB:Lbgy;

.field public static final enum NONE:Lbgy;

.field public static final enum TEST_USER:Lbgy;

.field public static final enum WEB_VIEW:Lbgy;


# instance fields
.field private final canExtendToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 30
    new-instance v0, Lbgy;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lbgy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbgy;->NONE:Lbgy;

    .line 35
    new-instance v0, Lbgy;

    const-string v1, "FACEBOOK_APPLICATION_WEB"

    invoke-direct {v0, v1, v3, v3}, Lbgy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbgy;->FACEBOOK_APPLICATION_WEB:Lbgy;

    .line 40
    new-instance v0, Lbgy;

    const-string v1, "FACEBOOK_APPLICATION_NATIVE"

    invoke-direct {v0, v1, v5, v3}, Lbgy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbgy;->FACEBOOK_APPLICATION_NATIVE:Lbgy;

    .line 46
    new-instance v0, Lbgy;

    const-string v1, "FACEBOOK_APPLICATION_SERVICE"

    invoke-direct {v0, v1, v6, v3}, Lbgy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbgy;->FACEBOOK_APPLICATION_SERVICE:Lbgy;

    .line 51
    new-instance v0, Lbgy;

    const-string v1, "WEB_VIEW"

    invoke-direct {v0, v1, v7, v3}, Lbgy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbgy;->WEB_VIEW:Lbgy;

    .line 56
    new-instance v0, Lbgy;

    const-string v1, "CHROME_CUSTOM_TAB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lbgy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbgy;->CHROME_CUSTOM_TAB:Lbgy;

    .line 61
    new-instance v0, Lbgy;

    const-string v1, "TEST_USER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lbgy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbgy;->TEST_USER:Lbgy;

    .line 65
    new-instance v0, Lbgy;

    const-string v1, "CLIENT_TOKEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lbgy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbgy;->CLIENT_TOKEN:Lbgy;

    .line 69
    new-instance v0, Lbgy;

    const-string v1, "DEVICE_AUTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lbgy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbgy;->DEVICE_AUTH:Lbgy;

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [Lbgy;

    sget-object v1, Lbgy;->NONE:Lbgy;

    aput-object v1, v0, v4

    sget-object v1, Lbgy;->FACEBOOK_APPLICATION_WEB:Lbgy;

    aput-object v1, v0, v3

    sget-object v1, Lbgy;->FACEBOOK_APPLICATION_NATIVE:Lbgy;

    aput-object v1, v0, v5

    sget-object v1, Lbgy;->FACEBOOK_APPLICATION_SERVICE:Lbgy;

    aput-object v1, v0, v6

    sget-object v1, Lbgy;->WEB_VIEW:Lbgy;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbgy;->CHROME_CUSTOM_TAB:Lbgy;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbgy;->TEST_USER:Lbgy;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbgy;->CLIENT_TOKEN:Lbgy;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbgy;->DEVICE_AUTH:Lbgy;

    aput-object v2, v0, v1

    sput-object v0, Lbgy;->$VALUES:[Lbgy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-boolean p3, p0, Lbgy;->canExtendToken:Z

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbgy;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lbgy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbgy;

    return-object v0
.end method

.method public static values()[Lbgy;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lbgy;->$VALUES:[Lbgy;

    invoke-virtual {v0}, [Lbgy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbgy;

    return-object v0
.end method


# virtual methods
.method canExtendToken()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lbgy;->canExtendToken:Z

    return v0
.end method
