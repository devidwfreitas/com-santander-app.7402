.class public final enum Lapx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lapx;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lapx;

.field public static final enum HG:Lapx;

.field public static final enum HI:Lapx;

.field public static final enum HK:Lapx;

.field public static final enum OCULTO:Lapx;

.field public static final enum PI:Lapx;

.field public static final enum PROD:Lapx;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lapx;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v3}, Lapx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapx;->PROD:Lapx;

    new-instance v0, Lapx;

    const-string v1, "PI"

    invoke-direct {v0, v1, v4}, Lapx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapx;->PI:Lapx;

    new-instance v0, Lapx;

    const-string v1, "HK"

    invoke-direct {v0, v1, v5}, Lapx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapx;->HK:Lapx;

    new-instance v0, Lapx;

    const-string v1, "HI"

    invoke-direct {v0, v1, v6}, Lapx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapx;->HI:Lapx;

    new-instance v0, Lapx;

    const-string v1, "HG"

    invoke-direct {v0, v1, v7}, Lapx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapx;->HG:Lapx;

    new-instance v0, Lapx;

    const-string v1, "OCULTO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lapx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapx;->OCULTO:Lapx;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lapx;

    sget-object v1, Lapx;->PROD:Lapx;

    aput-object v1, v0, v3

    sget-object v1, Lapx;->PI:Lapx;

    aput-object v1, v0, v4

    sget-object v1, Lapx;->HK:Lapx;

    aput-object v1, v0, v5

    sget-object v1, Lapx;->HI:Lapx;

    aput-object v1, v0, v6

    sget-object v1, Lapx;->HG:Lapx;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lapx;->OCULTO:Lapx;

    aput-object v2, v0, v1

    sput-object v0, Lapx;->$VALUES:[Lapx;

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

.method public static valueOf(Ljava/lang/String;)Lapx;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lapx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lapx;

    return-object v0
.end method

.method public static values()[Lapx;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lapx;->$VALUES:[Lapx;

    invoke-virtual {v0}, [Lapx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapx;

    return-object v0
.end method
