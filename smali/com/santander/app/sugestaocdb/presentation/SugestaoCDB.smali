.class public Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lmjz;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lnfe;

.field private C:Landroid/app/Activity;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lftq;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lmka;

.field private y:Landroid/app/Dialog;

.field private z:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->z:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Lmka;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->x:Lmka;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->z:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 102
    iput-object p0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->C:Landroid/app/Activity;

    .line 103
    const v0, 0x7f100d3b

    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->a:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f100d40

    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->b:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f100d45

    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->c:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f100d48

    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->d:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f100d4b

    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->e:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f100d4c

    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->f:Landroid/widget/Button;

    .line 109
    const v0, 0x7f100d4d

    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->g:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->g()V

    .line 113
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->a(Landroid/widget/EditText;)V

    .line 115
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->b()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->c()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public a(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lgui;

    invoke-direct {v0}, Lgui;-><init>()V

    .line 121
    invoke-virtual {v0, p1}, Lgui;->a(Landroid/widget/EditText;)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    return-void
.end method

.method public a(Lftt;Lftq;Lfuu;)V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    const-string v1, "producto"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 274
    const-string v1, "respSimularAplicacao"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 275
    const-string v1, "valorAplicado"

    invoke-virtual {p1}, Lftt;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "cuentaOrigen"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 277
    const-string v1, "prazo"

    invoke-virtual {p1}, Lftt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "agendada"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    const-string v1, "fecha"

    invoke-static {}, Lnak;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "dataAgendamento"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "dadoAplicacao"

    invoke-virtual {p2}, Lftq;->c()Lftd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->startActivity(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->i:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 288
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 289
    const v0, 0x7f04035c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 291
    const v0, 0x7f1010d3

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const v0, 0x7f1010d4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v2, Lmjw;

    invoke-direct {v2, p0, v1}, Lmjw;-><init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    const v0, 0x7f1010d5

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmjx;

    invoke-direct {v2, p0, v1}, Lmjx;-><init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v0, 0x7f1010d6

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmjy;

    invoke-direct {v2, p0, v1}, Lmjy;-><init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    new-instance v0, Lmyg;

    iget-object v2, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->i:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 320
    new-instance v0, Lmyh;

    iget-object v2, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->i:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 321
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 322
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 148
    const-string v0, "Alerta"

    const-string v1, "OK"

    invoke-static {p0, v0, p1, p2, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 149
    return-void
.end method

.method public a(Ljava/util/List;Lftq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmjc;",
            ">;",
            "Lftq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->B:Lnfe;

    invoke-virtual {v0}, Lnfe;->b()V

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 216
    new-instance v3, Lftq;

    invoke-direct {v3}, Lftq;-><init>()V

    .line 217
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmjc;

    invoke-virtual {v0}, Lmjc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lftq;->b(Ljava/lang/String;)V

    .line 218
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmjc;

    invoke-virtual {v0}, Lmjc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lftq;->a(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 222
    :cond_0
    const-string v0, "Investimentos_RendaFixa_Aplicar_Acao"

    const-string v1, "AplicarIvestimento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    const-string v1, "listaProdutos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 226
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method public a(Lmjb;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0905e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040280

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 236
    invoke-virtual {p1}, Lmjb;->c()Ljava/util/List;

    move-result-object v7

    .line 238
    const v0, 0x7f100d70

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 241
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040287

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 244
    const v2, 0x7f100d97

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 245
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmjc;

    invoke-virtual {v3}, Lmjc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->v:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const v2, 0x7f10053b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 249
    const v3, 0x7f020068

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    :cond_0
    new-instance v2, Lmjv;

    invoke-direct {v2, p0, v7, v4}, Lmjv;-><init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Lnfe;

    invoke-direct {v0, p0, v5, v6}, Lnfe;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->B:Lnfe;

    .line 268
    return-void
.end method

.method b()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lmjt;

    invoke-direct {v0, p0}, Lmjt;-><init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)V

    return-object v0
.end method

.method c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lmju;

    invoke-direct {v0, p0}, Lmju;-><init>(Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;)V

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 154
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 158
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->y:Landroid/app/Dialog;

    .line 159
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->y:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 165
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->y:Landroid/app/Dialog;

    .line 168
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->x:Lmka;

    invoke-interface {v0}, Lmka;->a()V

    .line 172
    return-void
.end method

.method public h()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public i()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public j()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public k()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->A:Ljava/lang/String;

    return-object v0
.end method

.method public o()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->C:Landroid/app/Activity;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->startActivity(Landroid/content/Intent;)V

    .line 328
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 329
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 81
    const v1, 0x7f090a99

    invoke-virtual {p0, v1}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "listaProdutos"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->w:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cdb"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->A:Ljava/lang/String;

    .line 86
    new-instance v0, Lmkb;

    iget-object v1, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->w:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lmkb;-><init>(Lmjz;Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->x:Lmka;

    .line 88
    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "chamarListaProdutos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const v0, 0x7f040397

    invoke-virtual {p0, v0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->a()V

    .line 92
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lgrs;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "chamarListaProdutos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->x:Lmka;

    invoke-interface {v0}, Lmka;->b()V

    .line 99
    :cond_0
    return-void
.end method

.method public p()Lnfe;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/santander/app/sugestaocdb/presentation/SugestaoCDB;->B:Lnfe;

    return-object v0
.end method
