.class public final enum Lkvk;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkvk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkvk;

.field public static final enum FIVE_STARS:Lkvk;

.field public static final enum FOUR_STARS:Lkvk;

.field public static final enum ONE_STAR:Lkvk;

.field public static final enum THREE_STARS:Lkvk;

.field public static final enum TWO_STARS:Lkvk;


# instance fields
.field private numberStar:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12
    new-instance v0, Lkvk;

    const-string v1, "ONE_STAR"

    invoke-direct {v0, v1, v7, v3}, Lkvk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkvk;->ONE_STAR:Lkvk;

    new-instance v0, Lkvk;

    const-string v1, "TWO_STARS"

    invoke-direct {v0, v1, v3, v4}, Lkvk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkvk;->TWO_STARS:Lkvk;

    new-instance v0, Lkvk;

    const-string v1, "THREE_STARS"

    invoke-direct {v0, v1, v4, v5}, Lkvk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkvk;->THREE_STARS:Lkvk;

    new-instance v0, Lkvk;

    const-string v1, "FOUR_STARS"

    invoke-direct {v0, v1, v5, v6}, Lkvk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkvk;->FOUR_STARS:Lkvk;

    new-instance v0, Lkvk;

    const-string v1, "FIVE_STARS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lkvk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkvk;->FIVE_STARS:Lkvk;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lkvk;

    sget-object v1, Lkvk;->ONE_STAR:Lkvk;

    aput-object v1, v0, v7

    sget-object v1, Lkvk;->TWO_STARS:Lkvk;

    aput-object v1, v0, v3

    sget-object v1, Lkvk;->THREE_STARS:Lkvk;

    aput-object v1, v0, v4

    sget-object v1, Lkvk;->FOUR_STARS:Lkvk;

    aput-object v1, v0, v5

    sget-object v1, Lkvk;->FIVE_STARS:Lkvk;

    aput-object v1, v0, v6

    sput-object v0, Lkvk;->$VALUES:[Lkvk;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lkvk;->numberStar:I

    .line 16
    return-void
.end method

.method public static getEnum(I)Lkvk;
    .locals 1

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 38
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    sget-object v0, Lkvk;->ONE_STAR:Lkvk;

    goto :goto_0

    .line 26
    :pswitch_1
    sget-object v0, Lkvk;->TWO_STARS:Lkvk;

    goto :goto_0

    .line 29
    :pswitch_2
    sget-object v0, Lkvk;->THREE_STARS:Lkvk;

    goto :goto_0

    .line 32
    :pswitch_3
    sget-object v0, Lkvk;->FOUR_STARS:Lkvk;

    goto :goto_0

    .line 35
    :pswitch_4
    sget-object v0, Lkvk;->FIVE_STARS:Lkvk;

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lkvk;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lkvk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkvk;

    return-object v0
.end method

.method public static values()[Lkvk;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lkvk;->$VALUES:[Lkvk;

    invoke-virtual {v0}, [Lkvk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkvk;

    return-object v0
.end method
