.class public final enum Lbdr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbdr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbdr;

.field public static final enum Butt:Lbdr;

.field public static final enum Round:Lbdr;

.field public static final enum Unknown:Lbdr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lbdr;

    const-string v1, "Butt"

    invoke-direct {v0, v1, v2}, Lbdr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbdr;->Butt:Lbdr;

    .line 24
    new-instance v0, Lbdr;

    const-string v1, "Round"

    invoke-direct {v0, v1, v3}, Lbdr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbdr;->Round:Lbdr;

    .line 25
    new-instance v0, Lbdr;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lbdr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbdr;->Unknown:Lbdr;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lbdr;

    sget-object v1, Lbdr;->Butt:Lbdr;

    aput-object v1, v0, v2

    sget-object v1, Lbdr;->Round:Lbdr;

    aput-object v1, v0, v3

    sget-object v1, Lbdr;->Unknown:Lbdr;

    aput-object v1, v0, v4

    sput-object v0, Lbdr;->$VALUES:[Lbdr;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbdr;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lbdr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbdr;

    return-object v0
.end method

.method public static values()[Lbdr;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lbdr;->$VALUES:[Lbdr;

    invoke-virtual {v0}, [Lbdr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbdr;

    return-object v0
.end method


# virtual methods
.method public toPaintCap()Landroid/graphics/Paint$Cap;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lbdp;->a:[I

    invoke-virtual {p0}, Lbdr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 32
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
