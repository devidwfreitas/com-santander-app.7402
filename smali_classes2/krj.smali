.class public final enum Lkrj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkrj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkrj;

.field public static final enum CESTA_BASICA:Lkrj;

.field public static final enum DEFAULT:Lkrj;

.field public static final enum FUNERAL:Lkrj;

.field public static final enum HELPER:Lkrj;

.field public static final enum HELP_DESK:Lkrj;

.field public static final enum MEDIC:Lkrj;

.field public static final enum SORTEIOS_MENSAIS:Lkrj;

.field public static final enum TRIP:Lkrj;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lkrj;

    const-string v1, "TRIP"

    invoke-direct {v0, v1, v3}, Lkrj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkrj;->TRIP:Lkrj;

    new-instance v0, Lkrj;

    const-string v1, "MEDIC"

    invoke-direct {v0, v1, v4}, Lkrj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkrj;->MEDIC:Lkrj;

    new-instance v0, Lkrj;

    const-string v1, "HELPER"

    invoke-direct {v0, v1, v5}, Lkrj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkrj;->HELPER:Lkrj;

    new-instance v0, Lkrj;

    const-string v1, "FUNERAL"

    invoke-direct {v0, v1, v6}, Lkrj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkrj;->FUNERAL:Lkrj;

    new-instance v0, Lkrj;

    const-string v1, "SORTEIOS_MENSAIS"

    invoke-direct {v0, v1, v7}, Lkrj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkrj;->SORTEIOS_MENSAIS:Lkrj;

    new-instance v0, Lkrj;

    const-string v1, "CESTA_BASICA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lkrj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkrj;->CESTA_BASICA:Lkrj;

    new-instance v0, Lkrj;

    const-string v1, "HELP_DESK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lkrj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkrj;->HELP_DESK:Lkrj;

    new-instance v0, Lkrj;

    const-string v1, "DEFAULT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lkrj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkrj;->DEFAULT:Lkrj;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [Lkrj;

    sget-object v1, Lkrj;->TRIP:Lkrj;

    aput-object v1, v0, v3

    sget-object v1, Lkrj;->MEDIC:Lkrj;

    aput-object v1, v0, v4

    sget-object v1, Lkrj;->HELPER:Lkrj;

    aput-object v1, v0, v5

    sget-object v1, Lkrj;->FUNERAL:Lkrj;

    aput-object v1, v0, v6

    sget-object v1, Lkrj;->SORTEIOS_MENSAIS:Lkrj;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkrj;->CESTA_BASICA:Lkrj;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkrj;->HELP_DESK:Lkrj;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkrj;->DEFAULT:Lkrj;

    aput-object v2, v0, v1

    sput-object v0, Lkrj;->$VALUES:[Lkrj;

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

.method public static valueOf(Ljava/lang/String;)Lkrj;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lkrj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkrj;

    return-object v0
.end method

.method public static values()[Lkrj;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lkrj;->$VALUES:[Lkrj;

    invoke-virtual {v0}, [Lkrj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkrj;

    return-object v0
.end method
