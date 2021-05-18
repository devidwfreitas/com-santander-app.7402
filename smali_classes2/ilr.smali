.class public final enum Lilr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lilr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lilr;

.field public static final enum GEO_LOCALTION:Lilr;

.field public static final enum PUBLIC_KEY:Lilr;


# instance fields
.field private endpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lilr;

    const-string v1, "GEO_LOCALTION"

    const-string v2, "geolocation/v1/location"

    invoke-direct {v0, v1, v3, v2}, Lilr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lilr;->GEO_LOCALTION:Lilr;

    .line 13
    new-instance v0, Lilr;

    const-string v1, "PUBLIC_KEY"

    const-string v2, "geolocation/v1/key/public"

    invoke-direct {v0, v1, v4, v2}, Lilr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lilr;->PUBLIC_KEY:Lilr;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lilr;

    sget-object v1, Lilr;->GEO_LOCALTION:Lilr;

    aput-object v1, v0, v3

    sget-object v1, Lilr;->PUBLIC_KEY:Lilr;

    aput-object v1, v0, v4

    sput-object v0, Lilr;->$VALUES:[Lilr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lilr;->endpoint:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lilr;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lilr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lilr;

    return-object v0
.end method

.method public static values()[Lilr;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lilr;->$VALUES:[Lilr;

    invoke-virtual {v0}, [Lilr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lilr;

    return-object v0
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lilr;->endpoint:Ljava/lang/String;

    return-object v0
.end method
