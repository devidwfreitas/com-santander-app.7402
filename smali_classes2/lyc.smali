.class public final enum Llyc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llyc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llyc;

.field public static final enum DVD:Llyc;

.field public static final enum MICROWAVE:Llyc;

.field public static final enum REFRIGERATOR:Llyc;

.field public static final enum TV:Llyc;

.field public static final enum WASHING:Llyc;


# instance fields
.field private mNameEquipment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Llyc;

    const-string v1, "TV"

    const-string v2, "Televis\u00e3o"

    invoke-direct {v0, v1, v3, v2}, Llyc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Llyc;->TV:Llyc;

    new-instance v0, Llyc;

    const-string v1, "DVD"

    const-string v2, "DVD - Blu Ray"

    invoke-direct {v0, v1, v4, v2}, Llyc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Llyc;->DVD:Llyc;

    new-instance v0, Llyc;

    const-string v1, "MICROWAVE"

    const-string v2, "Microondas"

    invoke-direct {v0, v1, v5, v2}, Llyc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Llyc;->MICROWAVE:Llyc;

    new-instance v0, Llyc;

    const-string v1, "REFRIGERATOR"

    const-string v2, "Geladeira"

    invoke-direct {v0, v1, v6, v2}, Llyc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Llyc;->REFRIGERATOR:Llyc;

    new-instance v0, Llyc;

    const-string v1, "WASHING"

    const-string v2, "Lavadora de roupas"

    invoke-direct {v0, v1, v7, v2}, Llyc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Llyc;->WASHING:Llyc;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Llyc;

    sget-object v1, Llyc;->TV:Llyc;

    aput-object v1, v0, v3

    sget-object v1, Llyc;->DVD:Llyc;

    aput-object v1, v0, v4

    sget-object v1, Llyc;->MICROWAVE:Llyc;

    aput-object v1, v0, v5

    sget-object v1, Llyc;->REFRIGERATOR:Llyc;

    aput-object v1, v0, v6

    sget-object v1, Llyc;->WASHING:Llyc;

    aput-object v1, v0, v7

    sput-object v0, Llyc;->$VALUES:[Llyc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Llyc;->mNameEquipment:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llyc;
    .locals 1

    .prologue
    .line 49
    const-class v0, Llyc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llyc;

    return-object v0
.end method

.method public static values()[Llyc;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Llyc;->$VALUES:[Llyc;

    invoke-virtual {v0}, [Llyc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llyc;

    return-object v0
.end method


# virtual methods
.method public getNameEquipment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Llyc;->mNameEquipment:Ljava/lang/String;

    return-object v0
.end method
