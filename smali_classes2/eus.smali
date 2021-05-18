.class final enum Leus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leus;

.field public static final enum ANSIX12_ENCODE:Leus;

.field public static final enum ASCII_ENCODE:Leus;

.field public static final enum BASE256_ENCODE:Leus;

.field public static final enum C40_ENCODE:Leus;

.field public static final enum EDIFACT_ENCODE:Leus;

.field public static final enum PAD_ENCODE:Leus;

.field public static final enum TEXT_ENCODE:Leus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Leus;

    const-string v1, "PAD_ENCODE"

    invoke-direct {v0, v1, v3}, Leus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leus;->PAD_ENCODE:Leus;

    .line 41
    new-instance v0, Leus;

    const-string v1, "ASCII_ENCODE"

    invoke-direct {v0, v1, v4}, Leus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leus;->ASCII_ENCODE:Leus;

    .line 42
    new-instance v0, Leus;

    const-string v1, "C40_ENCODE"

    invoke-direct {v0, v1, v5}, Leus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leus;->C40_ENCODE:Leus;

    .line 43
    new-instance v0, Leus;

    const-string v1, "TEXT_ENCODE"

    invoke-direct {v0, v1, v6}, Leus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leus;->TEXT_ENCODE:Leus;

    .line 44
    new-instance v0, Leus;

    const-string v1, "ANSIX12_ENCODE"

    invoke-direct {v0, v1, v7}, Leus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leus;->ANSIX12_ENCODE:Leus;

    .line 45
    new-instance v0, Leus;

    const-string v1, "EDIFACT_ENCODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Leus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leus;->EDIFACT_ENCODE:Leus;

    .line 46
    new-instance v0, Leus;

    const-string v1, "BASE256_ENCODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Leus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leus;->BASE256_ENCODE:Leus;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Leus;

    sget-object v1, Leus;->PAD_ENCODE:Leus;

    aput-object v1, v0, v3

    sget-object v1, Leus;->ASCII_ENCODE:Leus;

    aput-object v1, v0, v4

    sget-object v1, Leus;->C40_ENCODE:Leus;

    aput-object v1, v0, v5

    sget-object v1, Leus;->TEXT_ENCODE:Leus;

    aput-object v1, v0, v6

    sget-object v1, Leus;->ANSIX12_ENCODE:Leus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Leus;->EDIFACT_ENCODE:Leus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Leus;->BASE256_ENCODE:Leus;

    aput-object v2, v0, v1

    sput-object v0, Leus;->$VALUES:[Leus;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leus;
    .locals 1

    .prologue
    .line 39
    const-class v0, Leus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leus;

    return-object v0
.end method

.method public static values()[Leus;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Leus;->$VALUES:[Leus;

    invoke-virtual {v0}, [Leus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leus;

    return-object v0
.end method
