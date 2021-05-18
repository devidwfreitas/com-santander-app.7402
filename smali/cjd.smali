.class public final enum Lcjd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcjd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcjd;

.field public static final enum DOUBLE_TAP:Lcjd;

.field public static final enum DRAG:Lcjd;

.field public static final enum FLING:Lcjd;

.field public static final enum LONG_PRESS:Lcjd;

.field public static final enum NONE:Lcjd;

.field public static final enum PINCH_ZOOM:Lcjd;

.field public static final enum ROTATE:Lcjd;

.field public static final enum SINGLE_TAP:Lcjd;

.field public static final enum X_ZOOM:Lcjd;

.field public static final enum Y_ZOOM:Lcjd;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcjd;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcjd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcjd;->NONE:Lcjd;

    new-instance v0, Lcjd;

    const-string v1, "DRAG"

    invoke-direct {v0, v1, v4}, Lcjd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcjd;->DRAG:Lcjd;

    new-instance v0, Lcjd;

    const-string v1, "X_ZOOM"

    invoke-direct {v0, v1, v5}, Lcjd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcjd;->X_ZOOM:Lcjd;

    new-instance v0, Lcjd;

    const-string v1, "Y_ZOOM"

    invoke-direct {v0, v1, v6}, Lcjd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcjd;->Y_ZOOM:Lcjd;

    new-instance v0, Lcjd;

    const-string v1, "PINCH_ZOOM"

    invoke-direct {v0, v1, v7}, Lcjd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcjd;->PINCH_ZOOM:Lcjd;

    new-instance v0, Lcjd;

    const-string v1, "ROTATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcjd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcjd;->ROTATE:Lcjd;

    new-instance v0, Lcjd;

    const-string v1, "SINGLE_TAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcjd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcjd;->SINGLE_TAP:Lcjd;

    new-instance v0, Lcjd;

    const-string v1, "DOUBLE_TAP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcjd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcjd;->DOUBLE_TAP:Lcjd;

    new-instance v0, Lcjd;

    const-string v1, "LONG_PRESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcjd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcjd;->LONG_PRESS:Lcjd;

    new-instance v0, Lcjd;

    const-string v1, "FLING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcjd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcjd;->FLING:Lcjd;

    .line 15
    const/16 v0, 0xa

    new-array v0, v0, [Lcjd;

    sget-object v1, Lcjd;->NONE:Lcjd;

    aput-object v1, v0, v3

    sget-object v1, Lcjd;->DRAG:Lcjd;

    aput-object v1, v0, v4

    sget-object v1, Lcjd;->X_ZOOM:Lcjd;

    aput-object v1, v0, v5

    sget-object v1, Lcjd;->Y_ZOOM:Lcjd;

    aput-object v1, v0, v6

    sget-object v1, Lcjd;->PINCH_ZOOM:Lcjd;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcjd;->ROTATE:Lcjd;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcjd;->SINGLE_TAP:Lcjd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcjd;->DOUBLE_TAP:Lcjd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcjd;->LONG_PRESS:Lcjd;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcjd;->FLING:Lcjd;

    aput-object v2, v0, v1

    sput-object v0, Lcjd;->$VALUES:[Lcjd;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcjd;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcjd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcjd;

    return-object v0
.end method

.method public static values()[Lcjd;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcjd;->$VALUES:[Lcjd;

    invoke-virtual {v0}, [Lcjd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcjd;

    return-object v0
.end method
