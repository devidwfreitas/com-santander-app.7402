.class public Ljos;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lmip;

.field private b:Lipi;

.field private c:Ljoh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljos;->a:Lmip;

    .line 25
    iget-object v0, p0, Ljos;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    iput-object v0, p0, Ljos;->b:Lipi;

    .line 26
    invoke-static {}, Ljoq;->a()Ljoh;

    move-result-object v0

    iput-object v0, p0, Ljos;->c:Ljoh;

    .line 27
    return-void
.end method

.method static synthetic a(Ljos;)Lmip;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Ljos;->a:Lmip;

    return-object v0
.end method


# virtual methods
.method public a(Ljoj;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Ljos;->b:Lipi;

    const-string v1, "00000138"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljoj;->a(Ljnc;)V

    .line 45
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Ljos;->a:Lmip;

    invoke-interface {v0}, Lmip;->z()Ljnc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Ljos;->a:Lmip;

    invoke-interface {v0}, Lmip;->z()Ljnc;

    move-result-object v0

    invoke-interface {p1, v0}, Ljoj;->a(Ljnc;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Ljos;->c:Ljoh;

    new-instance v1, Ljot;

    invoke-direct {v1, p0, p1}, Ljot;-><init>(Ljos;Ljoj;)V

    invoke-interface {v0, v1}, Ljoh;->a(Ljoj;)V

    goto :goto_0
.end method
