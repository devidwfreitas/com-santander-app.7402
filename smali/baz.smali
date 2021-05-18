.class Lbaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbbv",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lbaz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lbaz;

    invoke-direct {v0}, Lbaz;-><init>()V

    sput-object v0, Lbaz;->a:Lbaz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic a()Lbaz;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lbaz;->a:Lbaz;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 64
    invoke-static {p1}, Lbes;->a(Ljava/lang/Object;)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lbaz;->a(Ljava/lang/Object;F)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
