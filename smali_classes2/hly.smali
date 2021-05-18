.class public Lhly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhlv;


# static fields
.field private static a:Lhly;


# instance fields
.field private b:Lhmy;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lhnc;

    invoke-direct {v0}, Lhnc;-><init>()V

    iput-object v0, p0, Lhly;->b:Lhmy;

    .line 22
    return-void
.end method

.method public static a()Lhly;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lhly;->a:Lhly;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lhly;

    invoke-direct {v0}, Lhly;-><init>()V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lhly;->a:Lhly;

    goto :goto_0
.end method

.method private b(Lhxl;Lhlw;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lhly;->b:Lhmy;

    new-instance v1, Lhma;

    invoke-direct {v1, p0, p2}, Lhma;-><init>(Lhly;Lhlw;)V

    invoke-interface {v0, p1, v1}, Lhmy;->a(Lhxl;Lhmz;)V

    .line 70
    return-void
.end method

.method private c(Lhxl;Lhlw;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lhly;->b:Lhmy;

    new-instance v1, Lhmb;

    invoke-direct {v1, p0, p2}, Lhmb;-><init>(Lhly;Lhlw;)V

    invoke-interface {v0, p1, v1}, Lhmy;->b(Lhxl;Lhmz;)V

    .line 84
    return-void
.end method


# virtual methods
.method public a(Lhlx;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lhly;->b:Lhmy;

    const-string v1, "2"

    new-instance v2, Lhlz;

    invoke-direct {v2, p0, p1}, Lhlz;-><init>(Lhly;Lhlx;)V

    invoke-interface {v0, v1, v2}, Lhmy;->a(Ljava/lang/String;Lhnb;)V

    .line 44
    return-void
.end method

.method public a(Lhxl;Lhlw;)V
    .locals 2

    .prologue
    .line 48
    if-eqz p1, :cond_1

    .line 49
    invoke-interface {p1}, Lhxl;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 50
    invoke-direct {p0, p1, p2}, Lhly;->c(Lhxl;Lhlw;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1}, Lhxl;->a()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 53
    invoke-direct {p0, p1, p2}, Lhly;->b(Lhxl;Lhlw;)V

    goto :goto_0
.end method
