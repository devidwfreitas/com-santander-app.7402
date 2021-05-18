.class public Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lihl;
.implements Lnau;


# instance fields
.field private A:Ligg;

.field private final B:I

.field private a:Lihw;

.field private b:Ligl;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Z

.field private g:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->f:Z

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->B:I

    return-void
.end method

.method private a(Landroid/content/Context;Lgky;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 210
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 211
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 212
    if-eqz p3, :cond_0

    .line 213
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 215
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-virtual {v0, v7, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 217
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 221
    if-eqz p3, :cond_1

    .line 222
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    const/high16 v1, -0x1000000

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    invoke-static {p0, v6}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 226
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    :goto_0
    return-object v0

    .line 229
    :cond_1
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-static {p0, v5}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 232
    invoke-virtual {p2}, Lgky;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p2}, Lgky;->d()Z

    move-result v4

    if-nez v4, :cond_2

    .line 237
    invoke-virtual {v3, v7, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 239
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-static {p0, v6}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e00fb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    invoke-virtual {p2}, Lgky;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Ligg;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->A:Ligg;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 252
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 253
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 254
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 256
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 257
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 262
    const-string v3, "Continuar"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 263
    new-instance v4, Lihj;

    invoke-direct {v4, p0, v1}, Lihj;-><init>(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;Landroid/app/Dialog;)V

    .line 276
    const-string v0, "Fechar"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v5, Lihk;

    invoke-direct {v5, p0, v1}, Lihk;-><init>(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;Landroid/app/Dialog;)V

    .line 285
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->i:Landroid/app/Activity;

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 286
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->f:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->h()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->f:Z

    return v0
.end method

.method public static synthetic d(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a()V

    .line 82
    const v0, 0x7f100b44

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->c:Landroid/widget/LinearLayout;

    .line 83
    const v0, 0x7f100b45

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->d:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f100aea

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->e:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f100b46

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->w:Landroid/widget/Button;

    .line 86
    const v0, 0x7f100b47

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->g:Landroid/widget/Button;

    .line 87
    const v0, 0x7f100b41

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->x:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f100b48

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->y:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f100b43

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->z:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "proposta"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligl;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->b:Ligl;

    .line 93
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->b:Ligl;

    invoke-virtual {v1}, Ligl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->e:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->e()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->g:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->g()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->w:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->f()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v0, Lihx;

    invoke-direct {v0, p0}, Lihx;-><init>(Lihl;)V

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a:Lihw;

    .line 99
    return-void
.end method

.method private e()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lihg;

    invoke-direct {v0, p0}, Lihg;-><init>(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)V

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->w:Landroid/widget/Button;

    return-object v0
.end method

.method private f()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lihh;

    invoke-direct {v0, p0}, Lihh;-><init>(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private g()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lihi;

    invoke-direct {v0, p0}, Lihi;-><init>(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)V

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Ligl;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->b:Ligl;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->startActivity(Landroid/content/Intent;)V

    .line 304
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public a(IZ)V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a:Lihw;

    iget-object v1, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->b:Ligl;

    iget-object v2, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->A:Ligg;

    invoke-interface {v0, v1, v2}, Lihw;->a(Ligl;Ligg;)V

    .line 291
    return-void
.end method

.method public a(Lgvb;)V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->startActivity(Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method public a(Ligg;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-virtual {p1}, Ligg;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ligg;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    invoke-virtual {p1}, Ligg;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkx;

    .line 165
    iget-object v2, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lgkx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p0, v4, v3}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a(Landroid/content/Context;Lgky;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    .line 168
    iget-object v3, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0, p0, v0, v4}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a(Landroid/content/Context;Lgky;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Ligg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iput-object p1, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->A:Ligg;

    .line 175
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->A:Ligg;

    iget-object v1, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ligg;->f(Ljava/lang/String;)V

    .line 177
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 205
    const-string v4, "Fechar"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/Dialog;

    .line 206
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a:Lihw;

    invoke-interface {v0}, Lihw;->c()V

    .line 182
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 188
    const v1, 0x7f100b0c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->y:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v2, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->x:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    if-nez v1, :cond_0

    .line 194
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 195
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 196
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 197
    const v2, 0x7f100b48

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 198
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 199
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 201
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->z()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->startActivity(Landroid/content/Intent;)V

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f040168

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->d()V

    .line 75
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a:Lihw;

    iget-object v1, p0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->b:Ligl;

    invoke-virtual {v1}, Ligl;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lihw;->a(I)V

    .line 76
    return-void
.end method
