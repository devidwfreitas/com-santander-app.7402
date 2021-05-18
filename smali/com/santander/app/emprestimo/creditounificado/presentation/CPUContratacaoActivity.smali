.class public Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lhvv;
.implements Lnau;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/CheckBox;

.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/Button;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/LinearLayout;

.field private O:Landroid/widget/RelativeLayout;

.field private a:Lhwb;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;)Lhwb;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 87
    const v0, 0x7f100222

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->c:Landroid/widget/ScrollView;

    .line 88
    const v0, 0x7f100245

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->B:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f100b5e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->d:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f100b67

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->e:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f100b72

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->f:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f100b70

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->g:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f100b6d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->w:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f100b63

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->x:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f100b65

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->y:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f100246

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->A:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f100b74

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->z:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f100b68

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->C:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f100b5d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->H:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f100b55

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->D:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f100b56

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->E:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f100b57

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->F:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f100b59

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->G:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f100b58

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->O:Landroid/widget/RelativeLayout;

    .line 108
    const v0, 0x7f100b5a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->I:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->I:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    const v0, 0x7f100b5b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->J:Landroid/widget/CheckBox;

    .line 113
    const v0, 0x7f100247

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->K:Landroid/widget/Button;

    .line 114
    const v0, 0x7f100248

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->L:Landroid/widget/Button;

    .line 116
    const v0, 0x7f100b73

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->M:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->J:Landroid/widget/CheckBox;

    new-instance v1, Lhvu;

    invoke-direct {v1, p0}, Lhvu;-><init>(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->c:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->K:Landroid/widget/Button;

    const v1, 0x7f090316

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->L:Landroid/widget/Button;

    const v1, 0x7f09031a

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 176
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    invoke-interface {v0}, Lhwb;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/text/Spanned;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public a(Lhgb;)V
    .locals 0

    .prologue
    .line 236
    invoke-static {p0, p1}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a(Landroid/content/Context;Lhgb;)V

    .line 237
    return-void
.end method

.method public a(Lhxn;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 137
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->H:Landroid/widget/TextView;

    const v1, 0x7f0903d8

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->d:Landroid/widget/TextView;

    invoke-interface {p1}, Lhxn;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->x:Landroid/widget/TextView;

    invoke-interface {p1}, Lhxn;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->e:Landroid/widget/TextView;

    invoke-interface {p1}, Lhxn;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->w:Landroid/widget/TextView;

    invoke-interface {p1, v2}, Lhxn;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->f:Landroid/widget/TextView;

    invoke-interface {p1, v2}, Lhxn;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->C:Landroid/widget/TextView;

    invoke-interface {p1}, Lhxn;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->y:Landroid/widget/TextView;

    invoke-interface {p1}, Lhxn;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->g:Landroid/widget/TextView;

    invoke-interface {p1}, Lhxn;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->z:Landroid/widget/TextView;

    invoke-interface {p1}, Lhxn;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public a(Lhxn;Z)V
    .locals 0

    .prologue
    .line 246
    invoke-static {p0, p1, p2}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->a(Landroid/content/Context;Lhxn;Z)V

    .line 247
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->c:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 167
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->K:Landroid/widget/Button;

    const v1, 0x7f090317

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->L:Landroid/widget/Button;

    const v1, 0x7f090319

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    return-void
.end method

.method public b(Lhxn;)V
    .locals 0

    .prologue
    .line 241
    invoke-static {p0, p1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUTermosCETActivity;->a(Landroid/content/Context;Lhxn;)V

    .line 242
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->b:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 222
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->b:Landroid/app/Dialog;

    .line 224
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->b:Landroid/app/Dialog;

    .line 232
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 251
    const v0, 0x7f09043f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lhys;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 252
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 256
    const v0, 0x7f090aa8

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lhys;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 257
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 261
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->K:Landroid/widget/Button;

    const v1, 0x7f090318

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const v2, 0x7f100249

    .line 277
    invoke-virtual {p0, v2}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    new-instance v0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 282
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 284
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 285
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    .line 286
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 290
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-super {p0}, Lgrs;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 217
    :goto_0
    :sswitch_0
    return-void

    .line 190
    :sswitch_1
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    invoke-interface {v0}, Lhwb;->c()V

    goto :goto_0

    .line 194
    :sswitch_2
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    invoke-interface {v0, p0}, Lhwb;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 201
    :sswitch_3
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    const-string v1, "cpu_resumo_contratual"

    invoke-interface {v0, v1}, Lhwb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :sswitch_4
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    const-string v1, "cpu_cet"

    invoke-interface {v0, v1}, Lhwb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :sswitch_5
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    const-string v1, "cpu_condicoes_gerais_emprestimo"

    invoke-interface {v0, v1}, Lhwb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :sswitch_6
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    const-string v1, "cpu_condicoes_seguro"

    invoke-interface {v0, v1}, Lhwb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x7f100247 -> :sswitch_1
        0x7f100248 -> :sswitch_2
        0x7f100b55 -> :sswitch_3
        0x7f100b56 -> :sswitch_4
        0x7f100b57 -> :sswitch_5
        0x7f100b59 -> :sswitch_6
        0x7f100b5b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->setContentView(I)V

    .line 79
    const v0, 0x7f09030e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->c(I)V

    .line 80
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->j()V

    .line 82
    new-instance v0, Lhwc;

    invoke-direct {v0, p0}, Lhwc;-><init>(Lhvv;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    .line 83
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    invoke-interface {v0}, Lhwb;->a()V

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a:Lhwb;

    invoke-interface {v0}, Lhwb;->b()V

    .line 183
    return-void
.end method
