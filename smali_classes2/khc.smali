.class public Lkhc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkgj;

.field private b:Lkgw;


# direct methods
.method public constructor <init>(Lkgw;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lkhc;->b:Lkgw;

    .line 23
    const-string v0, "request"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkgj;

    iput-object v0, p0, Lkhc;->a:Lkgj;

    .line 24
    return-void
.end method

.method static synthetic a(Lkhc;)Lkgw;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lkhc;->b:Lkgw;

    return-object v0
.end method

.method static synthetic b(Lkhc;)Lkgj;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lkhc;->a:Lkgj;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lkhc;->a:Lkgj;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lkhc;->b:Lkgw;

    iget-object v1, p0, Lkhc;->a:Lkgj;

    iget-object v1, v1, Lkgj;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkgw;->a(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public b()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lkhd;

    invoke-direct {v0, p0}, Lkhd;-><init>(Lkhc;)V

    return-object v0
.end method

.method public c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lkhe;

    invoke-direct {v0, p0}, Lkhe;-><init>(Lkhc;)V

    return-object v0
.end method
