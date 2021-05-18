.class public Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field private static final F:Ljava/lang/String; = "https://drive.google.com/viewerng/viewer?embedded=true&url="


# instance fields
.field private A:Landroid/webkit/WebView;

.field private B:Landroid/app/Dialog;

.field private C:Lhje;

.field private D:Lhix;

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/CheckBox;

.field private z:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 42
    const-string v0, "TermoContratacaoEmprestimoActivity"

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->B:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;Lhix;)Lhix;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->D:Lhix;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "simularAntecipacaoRequest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhje;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->C:Lhje;

    .line 79
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listaValoresCET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->E:Ljava/util/ArrayList;

    .line 81
    const v0, 0x7f10085a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->d:Landroid/widget/RelativeLayout;

    .line 82
    const v0, 0x7f10085c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->c:Landroid/widget/RelativeLayout;

    .line 84
    const v0, 0x7f100b77

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->A:Landroid/webkit/WebView;

    .line 86
    const v0, 0x7f10085d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->y:Landroid/widget/CheckBox;

    .line 87
    const v0, 0x7f10085b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->f:Landroid/widget/RelativeLayout;

    .line 88
    const v0, 0x7f100859

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->e:Landroid/widget/RelativeLayout;

    .line 89
    const v0, 0x7f1007f5

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->g:Landroid/widget/Button;

    .line 90
    const v0, 0x7f1007f6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->w:Landroid/widget/Button;

    .line 91
    const v0, 0x7f100697

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->x:Landroid/widget/Button;

    .line 93
    const v0, 0x7f100b75

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->z:Landroid/webkit/WebView;

    .line 95
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->w:Landroid/widget/Button;

    new-instance v1, Lhik;

    invoke-direct {v1, p0}, Lhik;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->g:Landroid/widget/Button;

    new-instance v1, Lhil;

    invoke-direct {v1, p0}, Lhil;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->y:Landroid/widget/CheckBox;

    new-instance v1, Lhim;

    invoke-direct {v1, p0}, Lhim;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->x:Landroid/widget/Button;

    new-instance v1, Lhin;

    invoke-direct {v1, p0}, Lhin;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->b()V

    .line 144
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->z:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/resumo_contratual_antecipacao13.html"

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 308
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->b:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 309
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 310
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 312
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 313
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 318
    const-string v3, "Sim"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v4, Lhio;

    invoke-direct {v4, p0, v1}, Lhio;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;Landroid/app/Dialog;)V

    .line 327
    const-string v0, "N\u00e3o"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 328
    new-instance v5, Lhip;

    invoke-direct {v5, p0, v1}, Lhip;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;Landroid/app/Dialog;)V

    .line 334
    const v0, 0x7f090aa6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    const v0, 0x7f090759

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 337
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->b:Landroid/app/Activity;

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 339
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->A:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->y:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->x:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Lhje;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->C:Lhje;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Lhix;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->D:Lhix;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->B:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->c()V

    .line 155
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f0401b4

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f090a96

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->c(I)V

    .line 70
    iput-object p0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->b:Landroid/app/Activity;

    .line 72
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->a()V

    .line 74
    return-void
.end method
