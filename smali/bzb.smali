.class public final enum Lbzb;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lbnv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbzb;",
        ">;",
        "Lbnv;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbzb;

.field public static final enum HASHTAG:Lbzb;

.field public static final enum LINK_SHARE_QUOTES:Lbzb;

.field public static final enum MULTIMEDIA:Lbzb;

.field public static final enum PHOTOS:Lbzb;

.field public static final enum SHARE_DIALOG:Lbzb;

.field public static final enum VIDEO:Lbzb;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x1339f47

    .line 36
    new-instance v0, Lbzb;

    const-string v1, "SHARE_DIALOG"

    const v2, 0x1332b3a

    invoke-direct {v0, v1, v4, v2}, Lbzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbzb;->SHARE_DIALOG:Lbzb;

    .line 40
    new-instance v0, Lbzb;

    const-string v1, "PHOTOS"

    const v2, 0x13350ac

    invoke-direct {v0, v1, v5, v2}, Lbzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbzb;->PHOTOS:Lbzb;

    .line 44
    new-instance v0, Lbzb;

    const-string v1, "VIDEO"

    const v2, 0x13353e4

    invoke-direct {v0, v1, v6, v2}, Lbzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbzb;->VIDEO:Lbzb;

    .line 48
    new-instance v0, Lbzb;

    const-string v1, "MULTIMEDIA"

    invoke-direct {v0, v1, v7, v3}, Lbzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbzb;->MULTIMEDIA:Lbzb;

    .line 52
    new-instance v0, Lbzb;

    const-string v1, "HASHTAG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lbzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbzb;->HASHTAG:Lbzb;

    .line 56
    new-instance v0, Lbzb;

    const-string v1, "LINK_SHARE_QUOTES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lbzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbzb;->LINK_SHARE_QUOTES:Lbzb;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lbzb;

    sget-object v1, Lbzb;->SHARE_DIALOG:Lbzb;

    aput-object v1, v0, v4

    sget-object v1, Lbzb;->PHOTOS:Lbzb;

    aput-object v1, v0, v5

    sget-object v1, Lbzb;->VIDEO:Lbzb;

    aput-object v1, v0, v6

    sget-object v1, Lbzb;->MULTIMEDIA:Lbzb;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lbzb;->HASHTAG:Lbzb;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lbzb;->LINK_SHARE_QUOTES:Lbzb;

    aput-object v2, v0, v1

    sput-object v0, Lbzb;->$VALUES:[Lbzb;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lbzb;->minVersion:I

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbzb;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lbzb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbzb;

    return-object v0
.end method

.method public static values()[Lbzb;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbzb;->$VALUES:[Lbzb;

    invoke-virtual {v0}, [Lbzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbzb;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "com.facebook.platform.action.request.FEED_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lbzb;->minVersion:I

    return v0
.end method
