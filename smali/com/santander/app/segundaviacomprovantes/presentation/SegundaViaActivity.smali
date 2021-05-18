.class public Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lknd;


# instance fields
.field private A:Lklu;

.field private a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/Spinner;

.field private e:Landroid/widget/Spinner;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Lkni;

.field private z:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 41
    const-string v0, "ComprovanteActivity"

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->w:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->y:Lkni;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->x:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->A:Lklu;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->f:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d:Landroid/widget/Spinner;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->e:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f100d2f

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->c:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f100d2a

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->w:Landroid/widget/Button;

    .line 78
    const v0, 0x7f100d2b

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->x:Landroid/widget/Button;

    .line 79
    const v0, 0x7f100d28

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->g:Landroid/widget/RelativeLayout;

    .line 80
    const v0, 0x7f100d23

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d:Landroid/widget/Spinner;

    .line 81
    const v0, 0x7f100d27

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->e:Landroid/widget/Spinner;

    .line 82
    const v0, 0x7f100d2d

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->f:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->f()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->y:Lkni;

    invoke-interface {v0}, Lkni;->b()V

    .line 88
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d()V

    .line 89
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->e()V

    .line 91
    new-instance v0, Lklu;

    invoke-direct {v0}, Lklu;-><init>()V

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->A:Lklu;

    .line 92
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->y:Lkni;

    invoke-interface {v0}, Lkni;->c()V

    .line 94
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b()V

    .line 95
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->c()V

    .line 96
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 246
    const-string v0, "Alerta"

    const/4 v1, 0x1

    const-string v2, "OK"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 247
    return-void
.end method

.method public a(Lklu;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->A:Lklu;

    .line 276
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->w:Landroid/widget/Button;

    new-instance v1, Lkmv;

    invoke-direct {v1, p0}, Lkmv;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->x:Landroid/widget/Button;

    new-instance v1, Lkmw;

    invoke-direct {v1, p0}, Lkmw;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->e:Landroid/widget/Spinner;

    new-instance v1, Lkmx;

    invoke-direct {v1, p0}, Lkmx;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 152
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d:Landroid/widget/Spinner;

    new-instance v1, Lkmy;

    invoke-direct {v1, p0}, Lkmy;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 181
    return-void
.end method

.method f()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lkmz;

    invoke-direct {v0, p0}, Lkmz;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)V

    return-object v0
.end method

.method public g()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lkna;

    invoke-direct {v0, p0}, Lkna;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)V

    return-object v0
.end method

.method public h()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->e:Landroid/widget/Spinner;

    return-object v0
.end method

.method public k()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d:Landroid/widget/Spinner;

    return-object v0
.end method

.method public n()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 251
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 252
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 256
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->z:Landroid/app/Dialog;

    .line 257
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 281
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f040388

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 67
    const v1, 0x7f090abb

    invoke-virtual {p0, v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 69
    iput-object p0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b:Landroid/app/Activity;

    .line 70
    new-instance v0, Lknj;

    invoke-direct {v0, p0}, Lknj;-><init>(Lknd;)V

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->y:Lkni;

    .line 71
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->a()V

    .line 72
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->z:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->z:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->z:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 263
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->z:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->z:Landroid/app/Dialog;

    .line 266
    :cond_0
    return-void
.end method

.method public q()Lklu;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->A:Lklu;

    return-object v0
.end method
