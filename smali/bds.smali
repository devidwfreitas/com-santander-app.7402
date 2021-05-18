.class public final enum Lbds;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbds;

.field public static final enum Bevel:Lbds;

.field public static final enum Miter:Lbds;

.field public static final enum Round:Lbds;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lbds;

    const-string v1, "Miter"

    invoke-direct {v0, v1, v2}, Lbds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbds;->Miter:Lbds;

    .line 42
    new-instance v0, Lbds;

    const-string v1, "Round"

    invoke-direct {v0, v1, v3}, Lbds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbds;->Round:Lbds;

    .line 43
    new-instance v0, Lbds;

    const-string v1, "Bevel"

    invoke-direct {v0, v1, v4}, Lbds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbds;->Bevel:Lbds;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lbds;

    sget-object v1, Lbds;->Miter:Lbds;

    aput-object v1, v0, v2

    sget-object v1, Lbds;->Round:Lbds;

    aput-object v1, v0, v3

    sget-object v1, Lbds;->Bevel:Lbds;

    aput-object v1, v0, v4

    sput-object v0, Lbds;->$VALUES:[Lbds;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbds;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lbds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbds;

    return-object v0
.end method

.method public static values()[Lbds;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lbds;->$VALUES:[Lbds;

    invoke-virtual {v0}, [Lbds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbds;

    return-object v0
.end method


# virtual methods
.method public toPaintJoin()Landroid/graphics/Paint$Join;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lbdp;->b:[I

    invoke-virtual {p0}, Lbds;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
