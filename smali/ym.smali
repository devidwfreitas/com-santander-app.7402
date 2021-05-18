.class public Lym;
.super Lacr;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1


# instance fields
.field private c:Lxy;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ScrollView;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 61
    new-instance v0, Lxy;

    invoke-direct {v0}, Lxy;-><init>()V

    iput-object v0, p0, Lym;->c:Lxy;

    .line 63
    iput-object p2, p0, Lym;->d:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lym;->e:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lym;->g()V

    .line 67
    invoke-direct {p0}, Lym;->b()V

    .line 68
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lym;->e()Lack;

    move-result-object v0

    sget v1, Lla;->termo_recusa_title:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lym;->f:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lym;->e()Lack;

    move-result-object v0

    sget v1, Lla;->termo_recusa_texto:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lym;->g:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lym;->e()Lack;

    move-result-object v0

    sget v1, Lla;->term_btn_compartilhar:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lym;->h:Landroid/widget/Button;

    .line 76
    invoke-virtual {p0}, Lym;->e()Lack;

    move-result-object v0

    sget v1, Lla;->container_termo_recusa:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lym;->i:Landroid/widget/ScrollView;

    .line 77
    invoke-virtual {p0}, Lym;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lym;->j:Landroid/widget/ImageButton;

    .line 78
    invoke-virtual {p0}, Lym;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lym;->k:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0}, Lym;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_logo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lym;->l:Landroid/widget/ImageView;

    .line 81
    invoke-direct {p0}, Lym;->d()V

    .line 82
    invoke-direct {p0}, Lym;->c()V

    .line 84
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lym;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lym;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lym;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lym;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lym;->j:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 91
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lym;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lym;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lym;->j:Landroid/widget/ImageButton;

    new-instance v1, Lyn;

    invoke-direct {v1, p0}, Lyn;-><init>(Lym;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lym;->h:Landroid/widget/Button;

    new-instance v1, Lyo;

    invoke-direct {v1, p0}, Lyo;-><init>(Lym;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Lyp;

    invoke-direct {v0, p0}, Lyp;-><init>(Lym;)V

    .line 140
    iget-object v1, p0, Lym;->c:Lxy;

    invoke-virtual {p0}, Lym;->e()Lack;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v1, v2, v0, v3}, Lxy;->a(Landroid/content/Context;Lya;Ljava/lang/String;)V

    .line 141
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p0}, Lym;->e()Lack;

    move-result-object v0

    iget-object v1, p0, Lym;->i:Landroid/widget/ScrollView;

    invoke-static {v0, v1}, Laau;->a(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "OPPs"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
