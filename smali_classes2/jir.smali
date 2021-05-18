.class public Ljir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljiq;


# instance fields
.field private a:Ljgw;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljgw;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Ljir;->a:Ljgw;

    .line 29
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Ljir;->b:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljdx;)V
    .locals 5

    .prologue
    const v4, 0x7f0906a7

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p1}, Ljdx;->H()Ljef;

    move-result-object v0

    invoke-virtual {p1}, Ljdx;->N()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljef;->a(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Ljdx;->H()Ljef;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p1}, Ljdx;->I()Ljeg;

    move-result-object v2

    invoke-virtual {p1}, Ljdx;->T()Ljava/lang/String;

    move-result-object v0

    const-string v3, "N"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljeg;->a(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljdx;->I()Ljeg;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p1}, Ljdx;->J()Ljeh;

    move-result-object v2

    invoke-virtual {p1}, Ljdx;->U()Ljava/lang/String;

    move-result-object v0

    const-string v3, "N"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljeh;->a(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljdx;->J()Ljeh;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1}, Ljdx;->K()Ljei;

    move-result-object v0

    invoke-virtual {p1}, Ljdx;->R()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljei;->a(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljdx;->K()Ljei;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Ljdz;

    invoke-direct {v0}, Ljdz;-><init>()V

    .line 50
    invoke-virtual {p1}, Ljdx;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdz;->a(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdz;->c(Ljava/lang/String;)V

    .line 52
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v2, Ljdz;

    invoke-direct {v2}, Ljdz;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljdx;->v()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NAO DISPONIVEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljdz;->a(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090634

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdz;->c(Ljava/lang/String;)V

    .line 57
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v2, Ljdz;

    invoke-direct {v2}, Ljdz;-><init>()V

    .line 60
    invoke-virtual {p1}, Ljdx;->u()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NAO DISPONIVEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljdz;->a(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090633

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdz;->c(Ljava/lang/String;)V

    .line 62
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Ljdz;

    invoke-direct {v0}, Ljdz;-><init>()V

    .line 65
    invoke-virtual {p1}, Ljdx;->S()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdz;->a(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090635

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdz;->c(Ljava/lang/String;)V

    .line 67
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Ljdz;

    invoke-direct {v0}, Ljdz;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljdx;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdz;->a(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09068b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdz;->c(Ljava/lang/String;)V

    .line 72
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p1}, Ljdx;->E()Ljec;

    move-result-object v0

    invoke-virtual {p1}, Ljdx;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljec;->a(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljdx;->E()Ljec;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p1}, Ljdx;->D()Ljeb;

    move-result-object v0

    invoke-virtual {p1}, Ljdx;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljeb;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljdx;->D()Ljeb;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1}, Ljdx;->F()Ljed;

    move-result-object v0

    invoke-virtual {p1}, Ljdx;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljed;->a(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljdx;->F()Ljed;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p1}, Ljdx;->G()Ljee;

    move-result-object v0

    invoke-virtual {p1}, Ljdx;->ab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljee;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Ljdx;->G()Ljee;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Ljdz;

    invoke-direct {v0}, Ljdz;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljdx;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdz;->a(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09068e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdz;->c(Ljava/lang/String;)V

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Ljdz;

    invoke-direct {v0}, Ljdz;-><init>()V

    .line 92
    invoke-virtual {p1}, Ljdx;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdz;->a(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Ljir;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09069c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdz;->c(Ljava/lang/String;)V

    .line 94
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Ljir;->a:Ljgw;

    invoke-interface {v0, v1}, Ljgw;->a(Ljava/util/List;)V

    .line 97
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljdx;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 43
    :cond_1
    const-string v0, "Sim"

    goto/16 :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1}, Ljdx;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 60
    :cond_3
    invoke-virtual {p1}, Ljdx;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method
