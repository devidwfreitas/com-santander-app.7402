.class public Ljoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljod;


# instance fields
.field private a:Ljnu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljnm;

.field private c:Ljnn;


# direct methods
.method public constructor <init>(Ljnu;)V
    .locals 1
    .param p1    # Ljnu;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljof;

    invoke-direct {v0, p0}, Ljof;-><init>(Ljoe;)V

    iput-object v0, p0, Ljoe;->c:Ljnn;

    .line 19
    iput-object p1, p0, Ljoe;->a:Ljnu;

    .line 20
    new-instance v0, Ljno;

    invoke-direct {v0}, Ljno;-><init>()V

    iput-object v0, p0, Ljoe;->b:Ljnm;

    .line 21
    return-void
.end method

.method static synthetic a(Ljoe;)Ljnu;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Ljoe;->a:Ljnu;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Ljoe;->a:Ljnu;

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Ljoe;->a:Ljnu;

    invoke-interface {v0}, Ljnu;->a()V

    .line 29
    iget-object v0, p0, Ljoe;->b:Ljnm;

    iget-object v1, p0, Ljoe;->c:Ljnn;

    invoke-interface {v0, v1}, Ljnm;->a(Ljnn;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Ljoe;->a:Ljnu;

    .line 35
    return-void
.end method
