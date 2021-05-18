.class public Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lhql;
.implements Lnau;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/CheckBox;

.field private I:Landroid/widget/CheckBox;

.field private J:Landroid/widget/Button;

.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/LinearLayout;

.field private O:Landroid/widget/LinearLayout;

.field private P:Landroid/widget/LinearLayout;

.field private Q:Landroid/widget/RelativeLayout;

.field private R:Landroid/widget/LinearLayout;

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/view/View;

.field private U:Lhrl;

.field private V:Z

.field private W:Lhtz;

.field private a:Landroid/support/v4/widget/NestedScrollView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

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
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->V:Z

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f100222

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->a:Landroid/support/v4/widget/NestedScrollView;

    .line 120
    const v0, 0x7f100223

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->y:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f100b5e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->b:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f100b67

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->c:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f100b72

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->d:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f100b70

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->e:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f100b6d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->f:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f100b63

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->g:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f100b65

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->w:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f100b74

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->x:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f100b68

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->z:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f100b55

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->A:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f100b56

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->B:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f100b57

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->C:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f100b5c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->R:Landroid/widget/LinearLayout;

    .line 137
    const v0, 0x7f100b58

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->Q:Landroid/widget/RelativeLayout;

    .line 138
    const v0, 0x7f100b59

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->D:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f100b5a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->E:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f100227

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->H:Landroid/widget/CheckBox;

    .line 143
    const v0, 0x7f100b5b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->I:Landroid/widget/CheckBox;

    .line 145
    const v0, 0x7f100229

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->J:Landroid/widget/Button;

    .line 146
    const v0, 0x7f100226

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->K:Landroid/widget/Button;

    .line 148
    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->M:Landroid/widget/LinearLayout;

    .line 149
    const v0, 0x7f100b73

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->L:Landroid/widget/LinearLayout;

    .line 152
    const v0, 0x7f100b5f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->N:Landroid/widget/LinearLayout;

    .line 153
    const v0, 0x7f100b60

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->F:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f100b6b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->S:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f100b61

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->O:Landroid/widget/LinearLayout;

    .line 158
    const v0, 0x7f10052d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->G:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f100b69

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->P:Landroid/widget/LinearLayout;

    .line 161
    const v0, 0x7f100225

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->T:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->H:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const v4, 0x7f100249

    .line 276
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->M:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    if-nez v1, :cond_0

    .line 282
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 283
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 284
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 286
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 287
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->H:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 303
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    invoke-interface {v0}, Lhrl;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->a:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 178
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->b:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorEntregueFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->R:Landroid/widget/LinearLayout;

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->c:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getParcelaFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->d:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaCETBreakLineFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->e:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getIofFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->f:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaJurosBreakLineFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->g:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->w:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getDiaPagamentoFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->x:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorPremioSeguroFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->z:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getVencimentoFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->F:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorTotalContractsFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->G:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorTotalRefinFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->R:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200e4

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Lgvb;)V
    .locals 2

    .prologue
    .line 326
    if-eqz p1, :cond_0

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 331
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const v3, 0x7f09032e

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->L:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 204
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    iput-boolean v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->V:Z

    .line 210
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 211
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    invoke-static {p0, p1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermosCondicoesActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 315
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->H:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 308
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const v2, 0x7f09032d

    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->L:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 216
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->V:Z

    .line 221
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->H:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 224
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    if-eqz p1, :cond_0

    .line 320
    invoke-static {p0, p1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPTermoCETActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 322
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 335
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f090a5e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 336
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->J:Landroid/widget/Button;

    const v1, 0x7f0902f7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 337
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->E:Landroid/widget/TextView;

    const v1, 0x7f09032e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->T:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 237
    :sswitch_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    invoke-interface {v0}, Lhrl;->k()V

    goto :goto_0

    .line 240
    :sswitch_1
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    invoke-interface {v0}, Lhrl;->e()V

    goto :goto_0

    .line 244
    :sswitch_2
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    invoke-interface {v0}, Lhrl;->h()V

    goto :goto_0

    .line 248
    :sswitch_3
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    invoke-interface {v0}, Lhrl;->f()V

    goto :goto_0

    .line 252
    :sswitch_4
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    invoke-interface {v0}, Lhrl;->g()V

    goto :goto_0

    .line 256
    :sswitch_5
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "cardPreferences"

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wasSimulated"

    .line 259
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    iget-boolean v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->V:Z

    invoke-interface {v0, v1}, Lhrl;->a(Z)V

    .line 262
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->W:Lhtz;

    invoke-virtual {v0}, Lhtz;->a()V

    .line 263
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->g()V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    invoke-interface {v0}, Lhrl;->j()V

    goto :goto_0

    .line 269
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100226 -> :sswitch_0
        0x7f100229 -> :sswitch_5
        0x7f100b55 -> :sswitch_1
        0x7f100b56 -> :sswitch_2
        0x7f100b57 -> :sswitch_3
        0x7f100b59 -> :sswitch_4
        0x7f100b6b -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->setContentView(I)V

    .line 89
    invoke-static {}, Lhtz;->h()Lhtz;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->W:Lhtz;

    .line 90
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->W:Lhtz;

    invoke-virtual {v0}, Lhtz;->b()V

    .line 92
    const v0, 0x7f09031b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->c(I)V

    .line 94
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->f()V

    .line 95
    const-string v0, "Emprestimos"

    const-string v1, "Emprestimos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lhrm;

    invoke-direct {v0, p0}, Lhrm;-><init>(Lhql;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    .line 97
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    invoke-interface {v0}, Lhrl;->a()V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->U:Lhrl;

    invoke-interface {v0}, Lhrl;->b()V

    .line 104
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 109
    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    invoke-super {p0, p1}, Lgrs;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;->finish()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
