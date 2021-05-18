.class public Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Liok;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lfqh;

.field private e:Landroid/app/Activity;

.field private f:Landroid/widget/ListView;

.field private g:Lfqh;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 43
    const-string v0, "ListarPaisesHabilitacaoActivity"

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->b:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a:Landroid/app/Dialog;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->w:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->x:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)Lfqh;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->g:Lfqh;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;Lfqh;)Lfqh;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->g:Lfqh;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 169
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 170
    const v0, 0x7f040188

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 171
    const v0, 0x7f100772

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 174
    const-string v2, "Erro ao buscar pa\u00edses."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    const v0, 0x7f1005ed

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentTextView;

    .line 177
    const-string v2, "Alerta"

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentTextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v0, 0x7f100783

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 179
    new-instance v2, Linm;

    invoke-direct {v2, p0, v1}, Linm;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 186
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a(I)V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->f:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v1, "codigoPais"

    iget-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "nomePais"

    iget-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->setResult(ILandroid/content/Intent;)V

    .line 118
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f040305

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->setContentView(I)V

    .line 58
    iput-object p0, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->e:Landroid/app/Activity;

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 65
    const-string v1, "Pa\u00edses"

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 67
    const v0, 0x7f100fce

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 68
    const v1, 0x7f100fcf

    invoke-virtual {p0, v1}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->f:Landroid/widget/ListView;

    .line 70
    new-instance v1, Linn;

    invoke-direct {v1, p0}, Linn;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Linn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v1, Link;

    invoke-direct {v1, p0, v0}, Link;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->f:Landroid/widget/ListView;

    new-instance v1, Linl;

    invoke-direct {v1, p0}, Linl;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    return-void
.end method
