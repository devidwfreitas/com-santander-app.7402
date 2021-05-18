.class public final enum Ljql;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljql;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljql;

.field public static final enum GET_USUARIO_SN:Ljql;

.field public static final enum RESETAR_SENHA:Ljql;

.field public static final enum TROCAR_SENHA:Ljql;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Ljql;

    const-string v1, "TROCAR_SENHA"

    invoke-direct {v0, v1, v2}, Ljql;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljql;->TROCAR_SENHA:Ljql;

    .line 21
    new-instance v0, Ljql;

    const-string v1, "RESETAR_SENHA"

    invoke-direct {v0, v1, v3}, Ljql;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljql;->RESETAR_SENHA:Ljql;

    .line 22
    new-instance v0, Ljql;

    const-string v1, "GET_USUARIO_SN"

    invoke-direct {v0, v1, v4}, Ljql;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljql;->GET_USUARIO_SN:Ljql;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Ljql;

    sget-object v1, Ljql;->TROCAR_SENHA:Ljql;

    aput-object v1, v0, v2

    sget-object v1, Ljql;->RESETAR_SENHA:Ljql;

    aput-object v1, v0, v3

    sget-object v1, Ljql;->GET_USUARIO_SN:Ljql;

    aput-object v1, v0, v4

    sput-object v0, Ljql;->$VALUES:[Ljql;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljql;
    .locals 1

    .prologue
    .line 19
    const-class v0, Ljql;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljql;

    return-object v0
.end method

.method public static values()[Ljql;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Ljql;->$VALUES:[Ljql;

    invoke-virtual {v0}, [Ljql;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljql;

    return-object v0
.end method
