.class public Lkhp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkhk;

.field private b:Lfvn;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkhk;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "RecargaTelefoneActivity"

    iput-object v0, p0, Lkhp;->c:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lkhp;->a:Lkhk;

    .line 29
    return-void
.end method

.method static synthetic a(Lkhp;Lfvn;)Lfvn;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lkhp;->b:Lfvn;

    return-object p1
.end method

.method static synthetic a(Lkhp;)Lkhk;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lkhp;->a:Lkhk;

    return-object v0
.end method

.method static synthetic b(Lkhp;)Lfvn;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lkhp;->b:Lfvn;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/widget/TabHost$OnTabChangeListener;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lkhq;

    invoke-direct {v0, p0}, Lkhq;-><init>(Lkhp;)V

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 32
    const-string v0, "dadosOferta"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 34
    if-eqz v0, :cond_0

    .line 35
    const-string v1, "dadosRecarga"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvn;

    iput-object v0, p0, Lkhp;->b:Lfvn;

    .line 38
    :cond_0
    iget-object v0, p0, Lkhp;->b:Lfvn;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lkhp;->a:Lkhk;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lkhk;->a(I)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lkhp;->a:Lkhk;

    invoke-interface {v0}, Lkhk;->a()V

    goto :goto_0
.end method

.method public b()Lkgu;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lkhr;

    invoke-direct {v0, p0}, Lkhr;-><init>(Lkhp;)V

    return-object v0
.end method
