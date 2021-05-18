.class public final enum Lbwp;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lbnv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbwp;",
        ">;",
        "Lbnv;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbwp;

.field public static final enum APP_INVITES_DIALOG:Lbwp;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    new-instance v0, Lbwp;

    const-string v1, "APP_INVITES_DIALOG"

    const v2, 0x133529d

    invoke-direct {v0, v1, v3, v2}, Lbwp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbwp;->APP_INVITES_DIALOG:Lbwp;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Lbwp;

    sget-object v1, Lbwp;->APP_INVITES_DIALOG:Lbwp;

    aput-object v1, v0, v3

    sput-object v0, Lbwp;->$VALUES:[Lbwp;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lbwp;->minVersion:I

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbwp;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lbwp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbwp;

    return-object v0
.end method

.method public static values()[Lbwp;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbwp;->$VALUES:[Lbwp;

    invoke-virtual {v0}, [Lbwp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbwp;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "com.facebook.platform.action.request.APPINVITES_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lbwp;->minVersion:I

    return v0
.end method
