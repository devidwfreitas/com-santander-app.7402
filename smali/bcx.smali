.class public final enum Lbcx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbcx;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbcx;

.field public static final enum Polygon:Lbcx;

.field public static final enum Star:Lbcx;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 18
    new-instance v0, Lbcx;

    const-string v1, "Star"

    invoke-direct {v0, v1, v3, v2}, Lbcx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbcx;->Star:Lbcx;

    .line 19
    new-instance v0, Lbcx;

    const-string v1, "Polygon"

    invoke-direct {v0, v1, v2, v4}, Lbcx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbcx;->Polygon:Lbcx;

    .line 17
    new-array v0, v4, [Lbcx;

    sget-object v1, Lbcx;->Star:Lbcx;

    aput-object v1, v0, v3

    sget-object v1, Lbcx;->Polygon:Lbcx;

    aput-object v1, v0, v2

    sput-object v0, Lbcx;->$VALUES:[Lbcx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lbcx;->value:I

    .line 25
    return-void
.end method

.method static forValue(I)Lbcx;
    .locals 5

    .prologue
    .line 28
    invoke-static {}, Lbcx;->values()[Lbcx;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 29
    iget v4, v0, Lbcx;->value:I

    if-ne v4, p0, :cond_0

    .line 33
    :goto_1
    return-object v0

    .line 28
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lbcx;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lbcx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbcx;

    return-object v0
.end method

.method public static values()[Lbcx;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lbcx;->$VALUES:[Lbcx;

    invoke-virtual {v0}, [Lbcx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbcx;

    return-object v0
.end method
