.class public final enum Lbyq;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lbnv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbyq;",
        ">;",
        "Lbnv;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbyq;

.field public static final enum OG_ACTION_DIALOG:Lbyq;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    new-instance v0, Lbyq;

    const-string v1, "OG_ACTION_DIALOG"

    const v2, 0x1332b3a

    invoke-direct {v0, v1, v3, v2}, Lbyq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbyq;->OG_ACTION_DIALOG:Lbyq;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Lbyq;

    sget-object v1, Lbyq;->OG_ACTION_DIALOG:Lbyq;

    aput-object v1, v0, v3

    sput-object v0, Lbyq;->$VALUES:[Lbyq;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lbyq;->minVersion:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbyq;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lbyq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbyq;

    return-object v0
.end method

.method public static values()[Lbyq;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbyq;->$VALUES:[Lbyq;

    invoke-virtual {v0}, [Lbyq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbyq;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lbyq;->minVersion:I

    return v0
.end method
