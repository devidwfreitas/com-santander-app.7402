.class public Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lkej;
.implements Lnau;


# instance fields
.field private A:I

.field private B:Landroid/app/Dialog;

.field private C:Landroid/app/Activity;

.field private D:Landroid/widget/RelativeLayout;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/CheckBox;

.field private G:I

.field private a:Lkfl;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Lkdg;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Lcom/santander/app/components/view/SantanderTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->A:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;)Lkfl;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->a:Lkfl;

    return-object v0
.end method

.method private p()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lkeh;

    invoke-direct {v0, p0}, Lkeh;-><init>(Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;)V

    return-object v0
.end method

.method private q()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lkei;

    invoke-direct {v0, p0}, Lkei;-><init>(Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->D:Landroid/widget/RelativeLayout;

    .line 82
    const v0, 0x7f100686

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->E:Landroid/widget/LinearLayout;

    .line 84
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->D:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->E:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    const v0, 0x7f1000ff

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->e:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f100101

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->f:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f100103

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->w:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f100105

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->x:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->y:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->F:Landroid/widget/CheckBox;

    .line 94
    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->z:Lcom/santander/app/components/view/SantanderTextView;

    .line 96
    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->b:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->b:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->p()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->c:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->c:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->q()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->a:Lkfl;

    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkfl;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->e()V

    .line 104
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->z:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(I)V

    .line 109
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->a:Lkfl;

    invoke-interface {v0}, Lkfl;->b()V

    .line 185
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    const-string v0, "Alerta"

    const/4 v1, 0x1

    const-string v2, "OK"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 204
    return-void
.end method

.method public b()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const-string v1, "code"

    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 140
    return-void
.end method

.method public d()Lkdg;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->d:Lkdg;

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->d:Lkdg;

    invoke-virtual {v1}, Lkdg;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->d:Lkdg;

    invoke-virtual {v1}, Lkdg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->d:Lkdg;

    invoke-virtual {v1}, Lkdg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->a:Lkfl;

    invoke-interface {v1}, Lkfl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    const v3, 0x7f100686

    .line 166
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 169
    if-nez v1, :cond_0

    .line 170
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 171
    iget v2, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->A:I

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 172
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 174
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 175
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->D:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->E:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 189
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->B:Landroid/app/Dialog;

    .line 190
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->B:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 196
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->B:Landroid/app/Dialog;

    .line 199
    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 208
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 209
    return-void
.end method

.method public j()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->C:Landroid/app/Activity;

    return-object v0
.end method

.method public k()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->F:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->d:Lkdg;

    invoke-virtual {v0}, Lkdg;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 144
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 145
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->F:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 66
    const v1, 0x7f0900cd

    invoke-virtual {p0, v1}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 68
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aporte_informacao"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkdg;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->d:Lkdg;

    .line 72
    iput-object p0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->C:Landroid/app/Activity;

    .line 74
    new-instance v0, Lkfm;

    invoke-direct {v0, p0}, Lkfm;-><init>(Lkej;)V

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->a:Lkfl;

    .line 76
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/AporteConfirmacaoActivity;->a()V

    .line 77
    return-void
.end method
