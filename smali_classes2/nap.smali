.class public final enum Lnap;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnap;

.field public static final enum AUTO:Lnap;

.field public static final enum CNPJ:Lnap;

.field public static final enum CPF:Lnap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lnap;

    const-string v1, "CPF"

    invoke-direct {v0, v1, v2}, Lnap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnap;->CPF:Lnap;

    .line 18
    new-instance v0, Lnap;

    const-string v1, "CNPJ"

    invoke-direct {v0, v1, v3}, Lnap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnap;->CNPJ:Lnap;

    .line 19
    new-instance v0, Lnap;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v4}, Lnap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnap;->AUTO:Lnap;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lnap;

    sget-object v1, Lnap;->CPF:Lnap;

    aput-object v1, v0, v2

    sget-object v1, Lnap;->CNPJ:Lnap;

    aput-object v1, v0, v3

    sget-object v1, Lnap;->AUTO:Lnap;

    aput-object v1, v0, v4

    sput-object v0, Lnap;->$VALUES:[Lnap;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnap;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnap;

    return-object v0
.end method

.method public static values()[Lnap;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lnap;->$VALUES:[Lnap;

    invoke-virtual {v0}, [Lnap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnap;

    return-object v0
.end method
