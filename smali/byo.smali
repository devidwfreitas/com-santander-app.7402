.class public final enum Lbyo;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lbnv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbyo;",
        ">;",
        "Lbnv;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbyo;

.field public static final enum MESSAGE_DIALOG:Lbyo;

.field public static final enum PHOTOS:Lbyo;

.field public static final enum VIDEO:Lbyo;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lbyo;

    const-string v1, "MESSAGE_DIALOG"

    const v2, 0x13350ac

    invoke-direct {v0, v1, v3, v2}, Lbyo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbyo;->MESSAGE_DIALOG:Lbyo;

    .line 40
    new-instance v0, Lbyo;

    const-string v1, "PHOTOS"

    const v2, 0x1335124

    invoke-direct {v0, v1, v4, v2}, Lbyo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbyo;->PHOTOS:Lbyo;

    .line 44
    new-instance v0, Lbyo;

    const-string v1, "VIDEO"

    const v2, 0x13354a2

    invoke-direct {v0, v1, v5, v2}, Lbyo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbyo;->VIDEO:Lbyo;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lbyo;

    sget-object v1, Lbyo;->MESSAGE_DIALOG:Lbyo;

    aput-object v1, v0, v3

    sget-object v1, Lbyo;->PHOTOS:Lbyo;

    aput-object v1, v0, v4

    sget-object v1, Lbyo;->VIDEO:Lbyo;

    aput-object v1, v0, v5

    sput-object v0, Lbyo;->$VALUES:[Lbyo;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lbyo;->minVersion:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbyo;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lbyo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbyo;

    return-object v0
.end method

.method public static values()[Lbyo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbyo;->$VALUES:[Lbyo;

    invoke-virtual {v0}, [Lbyo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbyo;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lbyo;->minVersion:I

    return v0
.end method
