.class public Ljsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljsc;


# instance fields
.field private a:Ljsn;

.field private b:Ljsf;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljrv;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljsn;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljsd;->a:Ljsn;

    .line 28
    new-instance v0, Ljsh;

    invoke-direct {v0}, Ljsh;-><init>()V

    iput-object v0, p0, Ljsd;->b:Ljsf;

    .line 29
    invoke-direct {p0}, Ljsd;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljsd;->d:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic a(Ljsd;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Ljsd;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Ljsd;)Ljsn;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Ljsd;->a:Ljsn;

    return-object v0
.end method

.method static synthetic b(Ljsd;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Ljsd;->c:Ljava/util/List;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljsd;->d()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljsd;->b:Ljsf;

    invoke-interface {v0}, Ljsf;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Ljsd;->a:Ljsn;

    invoke-interface {v0}, Ljsn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Ljsd;->a:Ljsn;

    invoke-interface {v0}, Ljsn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_segment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Ljsd;->d:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 56
    iget-object v0, p0, Ljsd;->a:Ljsn;

    invoke-interface {v0}, Ljsn;->a()V

    .line 59
    :goto_1
    return-void

    .line 48
    :sswitch_0
    const-string v2, "SE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "PR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :pswitch_0
    iget-object v0, p0, Ljsd;->a:Ljsn;

    invoke-interface {v0}, Ljsn;->b()V

    goto :goto_1

    .line 53
    :pswitch_1
    iget-object v0, p0, Ljsd;->a:Ljsn;

    invoke-interface {v0}, Ljsn;->c()V

    goto :goto_1

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0xa02 -> :sswitch_1
        0xa52 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljsd;->e()V

    .line 64
    iget-object v0, p0, Ljsd;->b:Ljsf;

    iget-object v1, p0, Ljsd;->d:Ljava/lang/String;

    new-instance v2, Ljse;

    invoke-direct {v2, p0}, Ljse;-><init>(Ljsd;)V

    invoke-interface {v0, v1, v2}, Ljsf;->a(Ljava/lang/String;Ljsg;)V

    .line 77
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Ljsd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Ljsd;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrv;

    invoke-virtual {v0}, Ljrv;->c()I

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v1, p0, Ljsd;->a:Ljsn;

    iget-object v0, p0, Ljsd;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrv;

    invoke-virtual {v0}, Ljrv;->c()I

    move-result v0

    invoke-interface {v1, v0}, Ljsn;->a(I)V

    .line 89
    :goto_1
    invoke-virtual {p0, p1}, Ljsd;->c(I)V

    .line 90
    invoke-virtual {p0, p1}, Ljsd;->b(I)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Ljsd;->a:Ljsn;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljsn;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Ljsd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Ljsd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 103
    iget-object v1, p0, Ljsd;->a:Ljsn;

    iget-object v0, p0, Ljsd;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrv;

    invoke-virtual {v0}, Ljrv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljsn;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Ljsd;->a:Ljsn;

    iget-object v0, p0, Ljsd;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrv;

    invoke-virtual {v0}, Ljrv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljsn;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
