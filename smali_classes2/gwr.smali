.class public final enum Lgwr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgwr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgwr;

.field public static final enum padrao:Lgwr;

.field public static final enum porquinho:Lgwr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lgwr;

    const-string v1, "padrao"

    invoke-direct {v0, v1, v2}, Lgwr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwr;->padrao:Lgwr;

    .line 12
    new-instance v0, Lgwr;

    const-string v1, "porquinho"

    invoke-direct {v0, v1, v3}, Lgwr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwr;->porquinho:Lgwr;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lgwr;

    sget-object v1, Lgwr;->padrao:Lgwr;

    aput-object v1, v0, v2

    sget-object v1, Lgwr;->porquinho:Lgwr;

    aput-object v1, v0, v3

    sput-object v0, Lgwr;->$VALUES:[Lgwr;

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

.method public static valueOf(Ljava/lang/String;)Lgwr;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgwr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgwr;

    return-object v0
.end method

.method public static values()[Lgwr;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lgwr;->$VALUES:[Lgwr;

    invoke-virtual {v0}, [Lgwr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgwr;

    return-object v0
.end method
