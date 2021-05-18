.class Lbar;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lbar;

    invoke-direct {v0}, Lbar;-><init>()V

    sput-object v0, Lbar;->a:Lbar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Lbes;->a(Ljava/lang/Object;)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lbar;->a(Ljava/lang/Object;F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
