.class public final enum Lil;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lil;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lil;

.field public static final enum DEV:Lil;

.field public static final enum HI:Lil;

.field public static final enum HK:Lil;

.field public static final enum MBBDEPLOY:Lil;

.field public static final enum MBBOCU:Lil;

.field public static final enum PI:Lil;

.field public static final enum PROD:Lil;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lil;

    const-string v1, "DEV"

    invoke-direct {v0, v1, v3}, Lil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lil;->DEV:Lil;

    .line 10
    new-instance v0, Lil;

    const-string v1, "PI"

    invoke-direct {v0, v1, v4}, Lil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lil;->PI:Lil;

    .line 11
    new-instance v0, Lil;

    const-string v1, "HK"

    invoke-direct {v0, v1, v5}, Lil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lil;->HK:Lil;

    .line 12
    new-instance v0, Lil;

    const-string v1, "HI"

    invoke-direct {v0, v1, v6}, Lil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lil;->HI:Lil;

    .line 13
    new-instance v0, Lil;

    const-string v1, "MBBOCU"

    invoke-direct {v0, v1, v7}, Lil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lil;->MBBOCU:Lil;

    .line 14
    new-instance v0, Lil;

    const-string v1, "MBBDEPLOY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lil;->MBBDEPLOY:Lil;

    .line 15
    new-instance v0, Lil;

    const-string v1, "PROD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lil;->PROD:Lil;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lil;

    sget-object v1, Lil;->DEV:Lil;

    aput-object v1, v0, v3

    sget-object v1, Lil;->PI:Lil;

    aput-object v1, v0, v4

    sget-object v1, Lil;->HK:Lil;

    aput-object v1, v0, v5

    sget-object v1, Lil;->HI:Lil;

    aput-object v1, v0, v6

    sget-object v1, Lil;->MBBOCU:Lil;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lil;->MBBDEPLOY:Lil;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lil;->PROD:Lil;

    aput-object v2, v0, v1

    sput-object v0, Lil;->$VALUES:[Lil;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lil;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lil;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lil;

    return-object v0
.end method

.method public static values()[Lil;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lil;->$VALUES:[Lil;

    invoke-virtual {v0}, [Lil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lil;

    return-object v0
.end method
