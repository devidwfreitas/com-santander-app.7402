.class public final enum Ljlk;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljlk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljlk;

.field public static final enum agencia:Ljlk;

.field public static final enum endereco:Ljlk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Ljlk;

    const-string v1, "endereco"

    invoke-direct {v0, v1, v2}, Ljlk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljlk;->endereco:Ljlk;

    .line 27
    new-instance v0, Ljlk;

    const-string v1, "agencia"

    invoke-direct {v0, v1, v3}, Ljlk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljlk;->agencia:Ljlk;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljlk;

    sget-object v1, Ljlk;->endereco:Ljlk;

    aput-object v1, v0, v2

    sget-object v1, Ljlk;->agencia:Ljlk;

    aput-object v1, v0, v3

    sput-object v0, Ljlk;->$VALUES:[Ljlk;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljlk;
    .locals 1

    .prologue
    .line 25
    const-class v0, Ljlk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljlk;

    return-object v0
.end method

.method public static values()[Ljlk;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Ljlk;->$VALUES:[Ljlk;

    invoke-virtual {v0}, [Ljlk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljlk;

    return-object v0
.end method
