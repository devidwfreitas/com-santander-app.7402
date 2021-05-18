.class public final enum Leo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leo;

.field public static final enum APP:Leo;

.field public static final enum FAILED:Leo;

.field public static final enum WEB:Leo;


# instance fields
.field private code:Ljava/lang/String;

.field private succeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 55
    new-instance v0, Leo;

    const-string v1, "FAILED"

    const-string v2, "failed"

    invoke-direct {v0, v1, v4, v2, v4}, Leo;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Leo;->FAILED:Leo;

    .line 59
    new-instance v0, Leo;

    const-string v1, "WEB"

    const-string v2, "web"

    invoke-direct {v0, v1, v3, v2, v3}, Leo;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Leo;->WEB:Leo;

    .line 63
    new-instance v0, Leo;

    const-string v1, "APP"

    const-string v2, "app"

    invoke-direct {v0, v1, v5, v2, v3}, Leo;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Leo;->APP:Leo;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Leo;

    sget-object v1, Leo;->FAILED:Leo;

    aput-object v1, v0, v4

    sget-object v1, Leo;->WEB:Leo;

    aput-object v1, v0, v3

    sget-object v1, Leo;->APP:Leo;

    aput-object v1, v0, v5

    sput-object v0, Leo;->$VALUES:[Leo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Leo;->code:Ljava/lang/String;

    .line 75
    iput-boolean p4, p0, Leo;->succeeded:Z

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leo;
    .locals 1

    .prologue
    .line 51
    const-class v0, Leo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leo;

    return-object v0
.end method

.method public static values()[Leo;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Leo;->$VALUES:[Leo;

    invoke-virtual {v0}, [Leo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leo;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Leo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public isSucceeded()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Leo;->succeeded:Z

    return v0
.end method
