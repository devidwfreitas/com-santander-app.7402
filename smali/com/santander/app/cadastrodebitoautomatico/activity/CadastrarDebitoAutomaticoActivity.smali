.class public Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field private A:Landroid/widget/EditText;

.field private B:Landroid/widget/CheckBox;

.field private C:Landroid/widget/EditText;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/EditText;

.field private F:Landroid/widget/CheckBox;

.field private G:Landroid/widget/Button;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/LinearLayout;

.field private J:I

.field private K:Lgac;

.field private L:Lgad;

.field private M:Landroid/app/Dialog;

.field private N:I

.field private O:I

.field private P:I

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgaf;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgae;",
            ">;"
        }
    .end annotation
.end field

.field private S:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lgae;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgae;",
            ">;"
        }
    .end annotation
.end field

.field private U:Landroid/widget/LinearLayout;

.field private final a:Ljava/lang/String;

.field private b:Lgoo;

.field private c:Lcom/santander/app/widget/Indicator;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/santander/app/contacorrente/domain/Conta;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:Landroid/widget/Spinner;

.field private z:Lcom/santander/app/components/view/ClickToSelectEditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 64
    const-string v0, "CadastrarDebitoAutomaticoActivity"

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->a:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->x:I

    .line 88
    iput v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->J:I

    .line 95
    iput v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->N:I

    iput v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->O:I

    .line 96
    iput v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->P:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->N:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->M:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->D:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->T:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;Lgad;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->a(Lgad;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;Lgag;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->a(Lgag;)V

    return-void
.end method

.method private a(Lgad;)V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->R:Ljava/util/List;

    .line 389
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->R:Ljava/util/List;

    invoke-virtual {p1}, Lgad;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->R:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->T:Ljava/util/List;

    .line 393
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->z:Lcom/santander/app/components/view/ClickToSelectEditText;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->T:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setItems(Ljava/util/List;)V

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->a(Z)V

    .line 395
    return-void
.end method

.method private a(Lgag;)V
    .locals 3

    .prologue
    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->Q:Ljava/util/List;

    .line 372
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->Q:Ljava/util/List;

    new-instance v1, Lgaf;

    const-string v2, "Selecione"

    invoke-direct {v1, v2}, Lgaf;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {p1}, Lgag;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgaf;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->Q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037d

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->Q:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 383
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->y:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 384
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->O:I

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->C:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    invoke-virtual {v1, v0}, Lgac;->o(Ljava/lang/String;)V

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    const-string v2, "[^A-Za-z_0-9\\s]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgac;->B(Ljava/lang/String;)V

    .line 280
    :goto_1
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    invoke-virtual {v1, v0}, Lgac;->C(Ljava/lang/String;)V

    .line 284
    const-string v1, "Pagamentos_Pagamento_CadastroEmDebitoAutomatico_ValorLimiteMaximoParaDebitoAutomatico"

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 289
    :goto_2
    iget v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->N:I

    if-nez v0, :cond_5

    .line 290
    const-string v0, "Pagamentos_Pagamento_CadastroEmDebitoAutomatico_LimiteMaximoParaDebitoAutomatico"

    const-string v1, "Sim"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lgac;->m(Ljava/lang/String;)V

    .line 299
    :goto_3
    iget v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->O:I

    if-nez v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lgac;->n(Ljava/lang/String;)V

    .line 302
    const-string v0, "Pagamentos_Pagamento_CadastroEmDebitoAutomatico_AvisoPeloCorreio"

    const-string v1, "Sim"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_4
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->y:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->y:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->y:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->k(Ljava/lang/String;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->z:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->a()Lgkz;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->z:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->a()Lgkz;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->z:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->a()Lgkz;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->j(Ljava/lang/String;)V

    .line 317
    :cond_1
    return-void

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lgac;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lgac;->B(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lgac;->C(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 294
    :cond_5
    const-string v0, "Pagamentos_Pagamento_CadastroEmDebitoAutomatico_LimiteMaximoParaDebitoAutomatico"

    const-string v1, "Nao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Lgac;->m(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 304
    :cond_6
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Lgac;->n(Ljava/lang/String;)V

    .line 306
    const-string v0, "Pagamentos_Pagamento_CadastroEmDebitoAutomatico_AvisoPeloCorreio"

    const-string v1, "Nao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public static synthetic c(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->P:I

    return p1
.end method

.method private c()V
    .locals 6

    .prologue
    .line 320
    const v0, 0x7f1004c7

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->d:Landroid/support/v4/view/ViewPager;

    .line 322
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->d:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfzu;

    invoke-direct {v1, p0}, Lfzu;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 337
    const v0, 0x7f1004ca

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->c:Lcom/santander/app/widget/Indicator;

    .line 338
    const v0, 0x7f1004c8

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->f:Landroid/widget/ImageView;

    .line 339
    const v0, 0x7f1004c9

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->e:Landroid/widget/ImageView;

    .line 340
    new-instance v0, Lgoo;

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->d:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->c:Lcom/santander/app/widget/Indicator;

    iget-object v4, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->f:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->e:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lgoo;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->b:Lgoo;

    .line 341
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->b:Lgoo;

    invoke-virtual {v0, p0}, Lgoo;->a(Lnez;)V

    .line 342
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->g:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 343
    if-gez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->b:Lgoo;

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->w:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lgoo;->a(Ljava/util/List;I)V

    .line 347
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Lfzv;

    invoke-direct {v1, p0}, Lfzv;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->e:Landroid/widget/ImageView;

    new-instance v1, Lfzw;

    invoke-direct {v1, p0}, Lfzw;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->d()Z

    move-result v0

    return v0
.end method

.method public static synthetic d(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->b()V

    return-void
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 492
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->y:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->i:Landroid/app/Activity;

    const-string v3, "Por favor, selecione o Tipo de conta"

    invoke-virtual {v0, v2, v3}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    move v0, v1

    .line 527
    :goto_0
    return v0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->i:Landroid/app/Activity;

    const-string v3, "Por favor, preencha o C\u00f3d. d\u00e9bito autom\u00e1tico"

    invoke-virtual {v0, v2, v3}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    move v0, v1

    .line 507
    goto :goto_0

    .line 510
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->e()V

    .line 512
    iget v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->N:I

    if-nez v0, :cond_4

    .line 513
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    :goto_1
    const-string v2, "0,00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 515
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->i:Landroid/app/Activity;

    const-string v3, "Por favor, informe o Valor m\u00e1ximo"

    invoke-virtual {v0, v2, v3}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    move v0, v1

    .line 517
    goto :goto_0

    .line 513
    :cond_2
    const-string v0, "0,00"

    goto :goto_1

    .line 520
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 521
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->i:Landroid/app/Activity;

    const-string v3, "Por favor, informe o Valor m\u00e1ximo"

    invoke-virtual {v0, v2, v3}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    move v0, v1

    .line 523
    goto :goto_0

    .line 527
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Lgac;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 559
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 560
    iget v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->P:I

    if-ge v0, v2, :cond_1

    .line 561
    :goto_0
    iget v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->P:I

    if-ge v0, v2, :cond_0

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 567
    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->I:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->H:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->R:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->T:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->z:Lcom/santander/app/components/view/ClickToSelectEditText;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic m(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->M:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic n(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->J:I

    return v0
.end method

.method public static synthetic o(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->w:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    new-instance v0, Lgac;

    invoke-direct {v0}, Lgac;-><init>()V

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->K:Lgac;

    .line 134
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->w:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->g:Lcom/santander/app/contacorrente/domain/Conta;

    .line 138
    :cond_0
    const v0, 0x7f100548

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->y:Landroid/widget/Spinner;

    .line 139
    const v0, 0x7f10054c

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->z:Lcom/santander/app/components/view/ClickToSelectEditText;

    .line 140
    const v0, 0x7f10054f

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    .line 141
    const v0, 0x7f100551

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->B:Landroid/widget/CheckBox;

    .line 142
    const v0, 0x7f100554

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->C:Landroid/widget/EditText;

    .line 143
    const v0, 0x7f100553

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->D:Landroid/widget/LinearLayout;

    .line 144
    const v0, 0x7f100556

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->E:Landroid/widget/EditText;

    .line 145
    const v0, 0x7f100559

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->F:Landroid/widget/CheckBox;

    .line 146
    const v0, 0x7f100558

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->U:Landroid/widget/LinearLayout;

    .line 147
    const v0, 0x7f10055c

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->G:Landroid/widget/Button;

    .line 148
    const v0, 0x7f10054e

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->H:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f10054d

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->I:Landroid/widget/LinearLayout;

    .line 151
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setClickable(Z)V

    .line 153
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->B:Landroid/widget/CheckBox;

    new-instance v1, Lfzp;

    invoke-direct {v1, p0}, Lfzp;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->F:Landroid/widget/CheckBox;

    new-instance v1, Lfzq;

    invoke-direct {v1, p0}, Lfzq;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->U:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->G:Landroid/widget/Button;

    new-instance v1, Lfzr;

    invoke-direct {v1, p0}, Lfzr;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->y:Landroid/widget/Spinner;

    new-instance v1, Lfzs;

    invoke-direct {v1, p0}, Lfzs;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 226
    new-instance v0, Lfzy;

    invoke-direct {v0, p0}, Lfzy;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfzy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->z:Lcom/santander/app/components/view/ClickToSelectEditText;

    new-instance v1, Lfzt;

    invoke-direct {v1, p0}, Lfzt;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setOnItemSelectedListener(Lgpd;)V

    .line 263
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 532
    if-eqz p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->y:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->z:Lcom/santander/app/components/view/ClickToSelectEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->z:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/ClickToSelectEditText;->setSearch(Z)V

    .line 538
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->z:Lcom/santander/app/components/view/ClickToSelectEditText;

    const-string v1, "Selecione: "

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->A:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->C:Landroid/widget/EditText;

    const-string v1, "0,00"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->E:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->F:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->B:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->B:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 555
    :cond_3
    return-void
.end method

.method public b(I)V
    .locals 6

    .prologue
    .line 577
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->c:Lcom/santander/app/widget/Indicator;

    iget-object v5, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->i:Landroid/app/Activity;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 579
    iget v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->J:I

    if-eq p1, v0, :cond_0

    .line 580
    const-string v0, "Pagamentos_Pagamento_CadastroEmDebitoAutomatico_Acao"

    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    iput p1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->J:I

    .line 585
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->a(Z)V

    .line 587
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 591
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->startActivity(Landroid/content/Intent;)V

    .line 594
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->finish()V

    .line 595
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v0, 0x7f0400f8

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->setContentView(I)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->w:Ljava/util/List;

    .line 113
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 115
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 119
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 120
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 121
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "D\u00e9bito Autom\u00e1tico"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const-string v0, "D\u00e9bito Autom\u00e1tico"

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->a()V

    .line 127
    invoke-direct {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;->c()V

    .line 128
    return-void
.end method
