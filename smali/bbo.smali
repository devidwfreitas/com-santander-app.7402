.class Lbbo;
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
        "Lazz;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lbbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lbbo;

    invoke-direct {v0}, Lbbo;-><init>()V

    sput-object v0, Lbbo;->a:Lbbo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic a()Lbbo;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lbbo;->a:Lbbo;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Lazz;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lbaa;->a(Lorg/json/JSONObject;)Lazz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lbbo;->a(Ljava/lang/Object;F)Lazz;

    move-result-object v0

    return-object v0
.end method
