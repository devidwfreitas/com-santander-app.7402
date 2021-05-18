.class public final enum Lezh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lezh;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lezh;

.field public static final enum AUTO:Lezh;

.field public static final enum BYTE:Lezh;

.field public static final enum NUMERIC:Lezh;

.field public static final enum TEXT:Lezh;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lezh;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lezh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lezh;->AUTO:Lezh;

    .line 22
    new-instance v0, Lezh;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lezh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lezh;->TEXT:Lezh;

    .line 23
    new-instance v0, Lezh;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v4}, Lezh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lezh;->BYTE:Lezh;

    .line 24
    new-instance v0, Lezh;

    const-string v1, "NUMERIC"

    invoke-direct {v0, v1, v5}, Lezh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lezh;->NUMERIC:Lezh;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lezh;

    sget-object v1, Lezh;->AUTO:Lezh;

    aput-object v1, v0, v2

    sget-object v1, Lezh;->TEXT:Lezh;

    aput-object v1, v0, v3

    sget-object v1, Lezh;->BYTE:Lezh;

    aput-object v1, v0, v4

    sget-object v1, Lezh;->NUMERIC:Lezh;

    aput-object v1, v0, v5

    sput-object v0, Lezh;->$VALUES:[Lezh;

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

.method public static valueOf(Ljava/lang/String;)Lezh;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lezh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lezh;

    return-object v0
.end method

.method public static values()[Lezh;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lezh;->$VALUES:[Lezh;

    invoke-virtual {v0}, [Lezh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lezh;

    return-object v0
.end method
