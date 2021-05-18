.class public final enum Llot;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llot;

.field public static final enum MINUS:Llot;

.field public static final enum PLUS:Llot;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Llot;

    const-string v1, "PLUS"

    invoke-direct {v0, v1, v2}, Llot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llot;->PLUS:Llot;

    new-instance v0, Llot;

    const-string v1, "MINUS"

    invoke-direct {v0, v1, v3}, Llot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llot;->MINUS:Llot;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Llot;

    sget-object v1, Llot;->PLUS:Llot;

    aput-object v1, v0, v2

    sget-object v1, Llot;->MINUS:Llot;

    aput-object v1, v0, v3

    sput-object v0, Llot;->$VALUES:[Llot;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llot;
    .locals 1

    .prologue
    .line 114
    const-class v0, Llot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llot;

    return-object v0
.end method

.method public static values()[Llot;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Llot;->$VALUES:[Llot;

    invoke-virtual {v0}, [Llot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llot;

    return-object v0
.end method
