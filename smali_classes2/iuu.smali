.class public final enum Liuu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Liuu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Liuu;

.field public static final enum OBRIGATORIA:Liuu;

.field public static final enum OPCIONAL:Liuu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Liuu;

    const-string v1, "OBRIGATORIA"

    invoke-direct {v0, v1, v2}, Liuu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liuu;->OBRIGATORIA:Liuu;

    .line 12
    new-instance v0, Liuu;

    const-string v1, "OPCIONAL"

    invoke-direct {v0, v1, v3}, Liuu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liuu;->OPCIONAL:Liuu;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Liuu;

    sget-object v1, Liuu;->OBRIGATORIA:Liuu;

    aput-object v1, v0, v2

    sget-object v1, Liuu;->OPCIONAL:Liuu;

    aput-object v1, v0, v3

    sput-object v0, Liuu;->$VALUES:[Liuu;

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

.method public static valueOf(Ljava/lang/String;)Liuu;
    .locals 1

    .prologue
    .line 10
    const-class v0, Liuu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Liuu;

    return-object v0
.end method

.method public static values()[Liuu;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Liuu;->$VALUES:[Liuu;

    invoke-virtual {v0}, [Liuu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liuu;

    return-object v0
.end method
