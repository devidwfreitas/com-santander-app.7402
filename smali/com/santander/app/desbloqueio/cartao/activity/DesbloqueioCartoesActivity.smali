.class public Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnez;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/EditText;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/EditText;

.field private G:Lgul;

.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Lcom/santander/app/widget/Indicator;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Lgon;

.field private w:Landroid/widget/Spinner;

.field private x:Landroid/widget/Spinner;

.field private y:I

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 58
    const-string v0, "DesbloqueioCartoesActivity"

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->b:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->a:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->F:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 104
    const v0, 0x7f1006c5

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->w:Landroid/widget/Spinner;

    .line 105
    const v0, 0x7f1006c7

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->x:Landroid/widget/Spinner;

    .line 107
    const v0, 0x7f1006b2

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->c:Landroid/support/v4/view/ViewPager;

    .line 108
    const v0, 0x7f1006b5

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->d:Lcom/santander/app/widget/Indicator;

    .line 109
    const v0, 0x7f1006b3

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->f:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f1006b4

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->e:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f1006b9

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->z:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f1006bc

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->A:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f1006bf

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->B:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f1006cd

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->C:Landroid/widget/EditText;

    .line 117
    const v0, 0x7f1006c8

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->E:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f1006ca

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->F:Landroid/widget/EditText;

    .line 120
    new-instance v0, Lgul;

    invoke-direct {v0}, Lgul;-><init>()V

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->G:Lgul;

    .line 121
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->G:Lgul;

    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->F:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lgul;->a(Landroid/widget/EditText;)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->F:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->G:Lgul;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->F:Landroid/widget/EditText;

    new-instance v1, Lhcn;

    invoke-direct {v1, p0}, Lhcn;-><init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->F:Landroid/widget/EditText;

    new-instance v1, Lhco;

    invoke-direct {v1, p0}, Lhco;-><init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 139
    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 140
    new-instance v1, Lhcp;

    invoke-direct {v1, p0}, Lhcp;-><init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->h()V

    .line 151
    invoke-virtual {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cartaoDesloqueioModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cartaoDesloqueioModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhcs;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lhcs;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lhcs;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->e()V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->d()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->d()V

    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->D:Ljava/util/List;

    .line 175
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->f()V

    .line 176
    iget v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->y:I

    invoke-direct {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->d(I)V

    .line 177
    return-void
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 266
    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Lghu;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Lghu;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Lghu;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const-string v1, "TI"

    invoke-virtual {v0}, Lghu;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "S"

    invoke-virtual {v0}, Lghu;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->E:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    :goto_0
    iput p1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->y:I

    .line 280
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->g()V

    .line 281
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->E:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->a:Landroid/app/Dialog;

    .line 181
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->t()Lgke;

    move-result-object v0

    new-instance v1, Lhcq;

    invoke-direct {v1, p0}, Lhcq;-><init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)V

    invoke-interface {v0, v1}, Lgke;->a(Lfoh;)V

    .line 192
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 196
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->c:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lhcr;

    invoke-direct {v1, p0}, Lhcr;-><init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    const v0, 0x7f1006b5

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->d:Lcom/santander/app/widget/Indicator;

    .line 212
    const v0, 0x7f1006b3

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->f:Landroid/widget/ImageView;

    .line 213
    const v0, 0x7f1006b4

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->e:Landroid/widget/ImageView;

    .line 215
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    new-instance v0, Lgon;

    iget-object v2, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->c:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->d:Lcom/santander/app/widget/Indicator;

    iget-object v4, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->f:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->e:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lgon;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->g:Lgon;

    .line 221
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->g:Lgon;

    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->D:Ljava/util/List;

    iget v2, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->y:I

    if-lez v2, :cond_0

    iget v6, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->y:I

    :cond_0
    invoke-virtual {v0, v1, v6}, Lgon;->a(Ljava/util/List;I)V

    .line 222
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->g:Lgon;

    invoke-virtual {v0, p0}, Lgon;->a(Lnez;)V

    .line 238
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->g:Lgon;

    invoke-virtual {v0}, Lgon;->a()I

    move-result v0

    iput v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->y:I

    .line 239
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->w:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 287
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->x:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 288
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->C:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const v3, 0x1090009

    .line 293
    invoke-virtual {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 294
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 295
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->w:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 297
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i()Ljava/util/List;

    move-result-object v0

    .line 299
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 300
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->x:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 301
    return-void
.end method

.method private i()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 304
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    const-string v0, "Selecione"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 310
    invoke-virtual {v1, v4, v4}, Ljava/util/Calendar;->add(II)V

    .line 311
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-object v2
.end method

.method private j()Lhct;
    .locals 3

    .prologue
    .line 380
    new-instance v1, Lhct;

    invoke-direct {v1}, Lhct;-><init>()V

    .line 381
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->D:Ljava/util/List;

    iget v2, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->y:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 383
    iget-object v2, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->v:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhct;->u(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Lghu;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhct;->h(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Lghu;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhct;->v(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Lghu;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhct;->n(Ljava/lang/String;)V

    .line 387
    const-string v2, "N"

    invoke-virtual {v1, v2}, Lhct;->m(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Lghu;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhct;->o(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Lghu;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhct;->p(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lghu;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhct;->q(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Lghu;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhct;->l(Ljava/lang/String;)V

    .line 393
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 321
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->w:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->x:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    iget-object v2, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    const-string v2, ""

    .line 325
    iget-object v4, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->E:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    iget-object v2, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->F:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 330
    :cond_0
    const-string v4, "selecione"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    const-string v1, "Por favor, informe o m\u00eas de validade do cart\u00e3o."

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 371
    :goto_0
    return-void

    .line 333
    :cond_1
    const-string v4, "selecione"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 334
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    const-string v1, "Por favor, informe o ano de validade do cart\u00e3o."

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 336
    :cond_2
    iget-object v4, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 337
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 338
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    const-string v1, "Por favor, informe o CPF do portador."

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 340
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lnai;->c(Ljava/lang/Long;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    const-string v1, "Por favor, informe um CPF v\u00e1lido."

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 346
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 347
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    const-string v1, "Por favor, informe a senha do cart\u00e3o."

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 349
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_8

    .line 350
    :cond_7
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    const-string v1, "Senha do cart\u00e3o deve ter 4 digitos"

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 354
    :cond_8
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->j()Lhct;

    move-result-object v4

    .line 357
    :try_start_0
    new-instance v5, Lnaf;

    invoke-direct {v5}, Lnaf;-><init>()V

    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v5, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lhct;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lhct;->t(Ljava/lang/String;)V

    .line 363
    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Lhct;->w(Ljava/lang/String;)V

    .line 365
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    const-string v1, "cartaoDesloqueioModel"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->startActivity(Landroid/content/Intent;)V

    .line 369
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->C:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->F:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 358
    :catch_0
    move-exception v3

    .line 359
    const-string v5, "Error"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 363
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->d(I)V

    .line 260
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->startActivity(Landroid/content/Intent;)V

    .line 377
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f04014f

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 92
    const v1, 0x7f09036b

    invoke-virtual {p0, v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 94
    iput-object p0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->i:Landroid/app/Activity;

    .line 96
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->u()I

    move-result v0

    iput v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->y:I

    .line 98
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;->b()V

    .line 99
    return-void
.end method
