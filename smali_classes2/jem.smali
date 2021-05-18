.class public final enum Ljem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljem;

.field public static final enum MEUS_FUNDOS:Ljem;

.field public static final enum TODOS_FUNDOS:Ljem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Ljem;

    const-string v1, "MEUS_FUNDOS"

    invoke-direct {v0, v1, v2}, Ljem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljem;->MEUS_FUNDOS:Ljem;

    .line 12
    new-instance v0, Ljem;

    const-string v1, "TODOS_FUNDOS"

    invoke-direct {v0, v1, v3}, Ljem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljem;->TODOS_FUNDOS:Ljem;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Ljem;

    sget-object v1, Ljem;->MEUS_FUNDOS:Ljem;

    aput-object v1, v0, v2

    sget-object v1, Ljem;->TODOS_FUNDOS:Ljem;

    aput-object v1, v0, v3

    sput-object v0, Ljem;->$VALUES:[Ljem;

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

.method public static valueOf(Ljava/lang/String;)Ljem;
    .locals 1

    .prologue
    .line 10
    const-class v0, Ljem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljem;

    return-object v0
.end method

.method public static values()[Ljem;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Ljem;->$VALUES:[Ljem;

    invoke-virtual {v0}, [Ljem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljem;

    return-object v0
.end method
