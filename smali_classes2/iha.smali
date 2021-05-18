.class public Liha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ligy;


# static fields
.field private static final d:Ljava/lang/String; = "ERROR_JSON_OBJECT"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Liia;

.field private c:Ligz;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ligz;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Liha;->a:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Liha;->c:Ligz;

    .line 34
    new-instance v0, Liib;

    invoke-direct {v0}, Liib;-><init>()V

    iput-object v0, p0, Liha;->b:Liia;

    .line 35
    return-void
.end method

.method static synthetic a(Liha;)Ligz;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Liha;->c:Ligz;

    return-object v0
.end method

.method private a(Ligi;)V
    .locals 4

    .prologue
    .line 62
    const-string v0, ""

    .line 63
    invoke-virtual {p1}, Ligi;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligl;

    .line 64
    invoke-virtual {v0}, Ligl;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "yyyy-MM-dd"

    invoke-static {v2, v3}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v3, "dd/MM/yyyy"

    invoke-static {v2, v3}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Ligl;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic a(Liha;Ligi;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Liha;->a(Ligi;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Liha;->b:Liia;

    new-instance v1, Lihb;

    invoke-direct {v1, p0}, Lihb;-><init>(Liha;)V

    invoke-interface {v0, v1}, Liia;->b(Lgkw;)V

    .line 59
    return-void
.end method
