.class public Lbak;
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
        "Lbaj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lbak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lbak;

    invoke-direct {v0}, Lbak;-><init>()V

    sput-object v0, Lbak;->a:Lbak;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Lbaj;
    .locals 7

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 39
    check-cast p1, Lorg/json/JSONArray;

    .line 40
    new-instance v0, Lbaj;

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v1, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    double-to-float v1, v2

    div-float/2addr v1, v6

    mul-float/2addr v1, p2

    const/4 v2, 0x1

    .line 42
    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v2, v6

    mul-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Lbaj;-><init>(FF)V

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lbak;->a(Ljava/lang/Object;F)Lbaj;

    move-result-object v0

    return-object v0
.end method
