.class Lbbb;
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
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lbbv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbv",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lbbb;

    invoke-direct {v0}, Lbbb;-><init>()V

    sput-object v0, Lbbb;->a:Lbbv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic a()Lbbv;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lbbb;->a:Lbbv;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 92
    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1, p2}, Lbes;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lbbb;->a(Ljava/lang/Object;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
