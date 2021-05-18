.class public final enum Lbnl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbnl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbnl;

.field public static final enum AppGroupCreate:Lbnl;

.field public static final enum AppGroupJoin:Lbnl;

.field public static final enum AppInvite:Lbnl;

.field public static final enum DeviceShare:Lbnl;

.field public static final enum GameRequest:Lbnl;

.field public static final enum Like:Lbnl;

.field public static final enum Login:Lbnl;

.field public static final enum Message:Lbnl;

.field public static final enum Share:Lbnl;


# instance fields
.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    new-instance v0, Lbnl;

    const-string v1, "Login"

    invoke-direct {v0, v1, v4, v4}, Lbnl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbnl;->Login:Lbnl;

    .line 93
    new-instance v0, Lbnl;

    const-string v1, "Share"

    invoke-direct {v0, v1, v5, v5}, Lbnl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbnl;->Share:Lbnl;

    .line 94
    new-instance v0, Lbnl;

    const-string v1, "Message"

    invoke-direct {v0, v1, v6, v6}, Lbnl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbnl;->Message:Lbnl;

    .line 95
    new-instance v0, Lbnl;

    const-string v1, "Like"

    invoke-direct {v0, v1, v7, v7}, Lbnl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbnl;->Like:Lbnl;

    .line 96
    new-instance v0, Lbnl;

    const-string v1, "GameRequest"

    invoke-direct {v0, v1, v8, v8}, Lbnl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbnl;->GameRequest:Lbnl;

    .line 97
    new-instance v0, Lbnl;

    const-string v1, "AppGroupCreate"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lbnl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbnl;->AppGroupCreate:Lbnl;

    .line 98
    new-instance v0, Lbnl;

    const-string v1, "AppGroupJoin"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lbnl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbnl;->AppGroupJoin:Lbnl;

    .line 99
    new-instance v0, Lbnl;

    const-string v1, "AppInvite"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lbnl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbnl;->AppInvite:Lbnl;

    .line 100
    new-instance v0, Lbnl;

    const-string v1, "DeviceShare"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lbnl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbnl;->DeviceShare:Lbnl;

    .line 91
    const/16 v0, 0x9

    new-array v0, v0, [Lbnl;

    sget-object v1, Lbnl;->Login:Lbnl;

    aput-object v1, v0, v4

    sget-object v1, Lbnl;->Share:Lbnl;

    aput-object v1, v0, v5

    sget-object v1, Lbnl;->Message:Lbnl;

    aput-object v1, v0, v6

    sget-object v1, Lbnl;->Like:Lbnl;

    aput-object v1, v0, v7

    sget-object v1, Lbnl;->GameRequest:Lbnl;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lbnl;->AppGroupCreate:Lbnl;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbnl;->AppGroupJoin:Lbnl;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbnl;->AppInvite:Lbnl;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbnl;->DeviceShare:Lbnl;

    aput-object v2, v0, v1

    sput-object v0, Lbnl;->$VALUES:[Lbnl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lbnl;->offset:I

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbnl;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lbnl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbnl;

    return-object v0
.end method

.method public static values()[Lbnl;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lbnl;->$VALUES:[Lbnl;

    invoke-virtual {v0}, [Lbnl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbnl;

    return-object v0
.end method


# virtual methods
.method public toRequestCode()I
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lbhv;->r()I

    move-result v0

    iget v1, p0, Lbnl;->offset:I

    add-int/2addr v0, v1

    return v0
.end method
