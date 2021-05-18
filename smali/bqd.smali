.class Lbqd;
.super Lbqf;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "com.facebook.katana"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbqf;-><init>(Lbqb;)V

    return-void
.end method

.method synthetic constructor <init>(Lbqb;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lbqd;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "com.facebook.katana"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const-string v0, "com.facebook.katana.ProxyAuth"

    return-object v0
.end method
