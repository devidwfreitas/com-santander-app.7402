.class public final enum Lgzr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgzr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgzr;

.field public static final enum DEFAULT:Lgzr;

.field public static final enum QR:Lgzr;

.field public static final enum SMS:Lgzr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lgzr;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v2}, Lgzr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgzr;->SMS:Lgzr;

    .line 12
    new-instance v0, Lgzr;

    const-string v1, "QR"

    invoke-direct {v0, v1, v3}, Lgzr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgzr;->QR:Lgzr;

    .line 13
    new-instance v0, Lgzr;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lgzr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgzr;->DEFAULT:Lgzr;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lgzr;

    sget-object v1, Lgzr;->SMS:Lgzr;

    aput-object v1, v0, v2

    sget-object v1, Lgzr;->QR:Lgzr;

    aput-object v1, v0, v3

    sget-object v1, Lgzr;->DEFAULT:Lgzr;

    aput-object v1, v0, v4

    sput-object v0, Lgzr;->$VALUES:[Lgzr;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgzr;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgzr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgzr;

    return-object v0
.end method

.method public static values()[Lgzr;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lgzr;->$VALUES:[Lgzr;

    invoke-virtual {v0}, [Lgzr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgzr;

    return-object v0
.end method
