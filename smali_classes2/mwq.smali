.class public final enum Lmwq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmwq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmwq;

.field public static final enum CNPJ:Lmwq;

.field public static final enum CPF:Lmwq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lmwq;

    const-string v1, "CPF"

    invoke-direct {v0, v1, v2}, Lmwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmwq;->CPF:Lmwq;

    .line 11
    new-instance v0, Lmwq;

    const-string v1, "CNPJ"

    invoke-direct {v0, v1, v3}, Lmwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmwq;->CNPJ:Lmwq;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lmwq;

    sget-object v1, Lmwq;->CPF:Lmwq;

    aput-object v1, v0, v2

    sget-object v1, Lmwq;->CNPJ:Lmwq;

    aput-object v1, v0, v3

    sput-object v0, Lmwq;->$VALUES:[Lmwq;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmwq;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lmwq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmwq;

    return-object v0
.end method

.method public static values()[Lmwq;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lmwq;->$VALUES:[Lmwq;

    invoke-virtual {v0}, [Lmwq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmwq;

    return-object v0
.end method
