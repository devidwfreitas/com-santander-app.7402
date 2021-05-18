.class public final enum Lmgx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmgx;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmgx;

.field public static final enum GRAY_BACKGROUND_DETAILS:Lmgx;

.field public static final enum GRAY_REP:Lmgx;

.field public static final enum GREY:Lmgx;


# instance fields
.field private drawableRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lmgx;

    const-string v1, "GREY"

    const v2, 0x7f020578

    invoke-direct {v0, v1, v3, v2}, Lmgx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmgx;->GREY:Lmgx;

    .line 25
    new-instance v0, Lmgx;

    const-string v1, "GRAY_BACKGROUND_DETAILS"

    const v2, 0x7f020576

    invoke-direct {v0, v1, v4, v2}, Lmgx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmgx;->GRAY_BACKGROUND_DETAILS:Lmgx;

    .line 26
    new-instance v0, Lmgx;

    const-string v1, "GRAY_REP"

    const v2, 0x7f020577

    invoke-direct {v0, v1, v5, v2}, Lmgx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmgx;->GRAY_REP:Lmgx;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lmgx;

    sget-object v1, Lmgx;->GREY:Lmgx;

    aput-object v1, v0, v3

    sget-object v1, Lmgx;->GRAY_BACKGROUND_DETAILS:Lmgx;

    aput-object v1, v0, v4

    sget-object v1, Lmgx;->GRAY_REP:Lmgx;

    aput-object v1, v0, v5

    sput-object v0, Lmgx;->$VALUES:[Lmgx;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lmgx;->drawableRes:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmgx;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lmgx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmgx;

    return-object v0
.end method

.method public static values()[Lmgx;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lmgx;->$VALUES:[Lmgx;

    invoke-virtual {v0}, [Lmgx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmgx;

    return-object v0
.end method


# virtual methods
.method public getDrawableRes()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lmgx;->drawableRes:I

    return v0
.end method
