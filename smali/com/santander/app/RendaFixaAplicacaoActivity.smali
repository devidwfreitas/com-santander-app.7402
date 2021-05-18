.class public Lcom/santander/app/RendaFixaAplicacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field private A:Lcom/santander/app/widget/Carrossel;

.field private B:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfos;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lfos;

.field private D:Lfmf;

.field private E:Lfmg;

.field private F:Lfmh;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lftq;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Landroid/content/SharedPreferences;

.field private Q:Landroid/content/SharedPreferences;

.field private R:Landroid/app/Dialog;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private final a:Ljava/lang/String;

.field private b:Lftq;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/santander/app/RendaFixaAplicacaoActivity;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/app/Dialog;

.field private g:I

.field private w:Z

.field private x:Lcom/santander/app/widget/Carrossel;

.field private y:Lcom/santander/app/widget/Carrossel;

.field private z:Lcom/santander/app/widget/Carrossel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 67
    const-string v0, "RendaFixaAplicacaoActivity"

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->a:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->b:Lftq;

    .line 71
    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->c:Ljava/util/List;

    .line 75
    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->f:Landroid/app/Dialog;

    .line 77
    iput v2, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->g:I

    .line 79
    iput-boolean v2, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->w:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->f:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoActivity;Lfmf;)Lfmf;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->D:Lfmf;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoActivity;Lfmg;)Lfmg;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->E:Lfmg;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoActivity;Lftq;)Lftq;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->b:Lftq;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 157
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 158
    new-instance v2, Lfmd;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lfmd;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Lflx;)V

    .line 159
    invoke-virtual {v2, v0}, Lfmd;->a(I)V

    .line 160
    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lfmd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->c:Ljava/util/List;

    .line 165
    const v0, 0x7f100461

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->e:Landroid/widget/EditText;

    .line 167
    new-instance v0, Lgui;

    invoke-direct {v0}, Lgui;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lgui;->a(Landroid/widget/EditText;)V

    .line 169
    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->H:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->H:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->d:Lcom/santander/app/RendaFixaAplicacaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 628
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->d:Lcom/santander/app/RendaFixaAplicacaoActivity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 629
    const v0, 0x7f04035c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 631
    const v0, 0x7f1010d3

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    const v0, 0x7f1010d4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v2, Lfma;

    invoke-direct {v2, p0, v1}, Lfma;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 640
    const v0, 0x7f1010d5

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lfmb;

    invoke-direct {v2, p0, v1}, Lfmb;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    const v0, 0x7f1010d6

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lfmc;

    invoke-direct {v2, p0, v1}, Lfmc;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    new-instance v0, Lmyg;

    iget-object v2, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->d:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {v0, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 663
    new-instance v0, Lmyh;

    iget-object v2, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->d:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-direct {v0, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 665
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 666
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/RendaFixaAplicacaoActivity;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->w:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/RendaFixaAplicacaoActivity;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->g:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 207
    :try_start_0
    const-string v0, "CDBPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->P:Landroid/content/SharedPreferences;

    .line 209
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->P:Landroid/content/SharedPreferences;

    const-string v1, "contaCDB"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->I:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->P:Landroid/content/SharedPreferences;

    const-string v1, "agenciaCDB"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->J:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->P:Landroid/content/SharedPreferences;

    const-string v1, "valorCDB"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->H:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->P:Landroid/content/SharedPreferences;

    const-string v1, "nomeProdutoCDB"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->L:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->P:Landroid/content/SharedPreferences;

    const-string v1, "codigoProdutoCDB"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->K:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->P:Landroid/content/SharedPreferences;

    const-string v1, "prazoCDB"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->M:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->P:Landroid/content/SharedPreferences;

    const-string v1, "agendadoCDB"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->N:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoActivity;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->d:Lcom/santander/app/RendaFixaAplicacaoActivity;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->d:Lcom/santander/app/RendaFixaAplicacaoActivity;

    const-string v1, "CDBPreferences"

    invoke-virtual {v0, v1, v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->d:Lcom/santander/app/RendaFixaAplicacaoActivity;

    const-string v2, "cardPreferences"

    invoke-virtual {v1, v2, v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 240
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 242
    const-string v2, "contaCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v2, "agenciaCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v2, "valorCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v2, "codigoProdutoCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v2, "nomeProdutoCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    const-string v2, "prazoCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    const-string v2, "agendadoCDB"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v2, "cpfCDB"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/RendaFixaAplicacaoActivity;)I
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->g:I

    return v0
.end method

.method private d()V
    .locals 10

    .prologue
    const v9, 0x7f0905b4

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 256
    const v0, 0x7f100d89

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->y:Lcom/santander/app/widget/Carrossel;

    .line 257
    const v0, 0x7f100d8f

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->x:Lcom/santander/app/widget/Carrossel;

    .line 259
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 263
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->K:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->K:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 265
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    move v3, v2

    .line 274
    :goto_2
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    .line 277
    new-instance v5, Lfpb;

    invoke-direct {v5}, Lfpb;-><init>()V

    .line 279
    invoke-virtual {v0}, Lftq;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfpb;->a(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 283
    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    invoke-virtual {v0}, Lftd;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {v5, v0}, Lfpb;->b(Ljava/lang/String;)V

    .line 288
    :goto_3
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 264
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->b:Lftq;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    .line 285
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "0"

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lfpb;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 291
    :cond_3
    new-instance v0, Lfpc;

    invoke-direct {v0, p0, v4}, Lfpc;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    .line 293
    new-instance v3, Lfoo;

    iget-object v4, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->c:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 295
    iget-object v4, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->y:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v4, p0}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 296
    iget-object v4, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->y:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v4, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 298
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->y:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 300
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->x:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v3}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 302
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->x:Lcom/santander/app/widget/Carrossel;

    new-instance v3, Lflx;

    invoke-direct {v3, p0}, Lflx;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V

    invoke-virtual {v0, v3}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 314
    const v0, 0x7f100d8d

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->z:Lcom/santander/app/widget/Carrossel;

    .line 315
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->B:Ljava/util/Vector;

    .line 317
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 319
    new-instance v3, Lfos;

    invoke-direct {v3}, Lfos;-><init>()V

    .line 321
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfos;->a(Ljava/lang/String;)V

    .line 322
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfos;->b(Ljava/lang/String;)V

    .line 324
    new-instance v4, Lfos;

    invoke-direct {v4}, Lfos;-><init>()V

    iput-object v4, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->C:Lfos;

    .line 325
    iget-object v4, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->C:Lfos;

    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0901ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfos;->a(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 327
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 328
    const/4 v5, 0x5

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 329
    iget-object v5, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->C:Lfos;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lfos;->b(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->C:Lfos;

    sget-object v4, Lfot;->PICKER:Lfot;

    invoke-virtual {v0, v4}, Lfos;->a(Lfot;)V

    .line 332
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->B:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->B:Ljava/util/Vector;

    iget-object v3, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->C:Lfos;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v0, Lfou;

    iget-object v3, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->B:Ljava/util/Vector;

    invoke-direct {v0, p0, v3, p0}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    .line 337
    iget-object v3, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->z:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v3, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 339
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->z:Lcom/santander/app/widget/Carrossel;

    new-instance v3, Lfly;

    invoke-direct {v3, p0}, Lfly;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;)V

    invoke-virtual {v0, v3}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 351
    iget-boolean v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->O:Z

    if-eqz v0, :cond_4

    .line 352
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->N:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->N:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 353
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->z:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v8}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 359
    :cond_4
    :goto_4
    invoke-direct {p0, v1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->d(I)V

    .line 360
    return-void

    .line 355
    :cond_5
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->z:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v2}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    goto :goto_4

    :cond_6
    move v1, v2

    goto/16 :goto_1
.end method

.method private d(I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 363
    const v0, 0x7f100d8b

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->A:Lcom/santander/app/widget/Carrossel;

    .line 364
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 366
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    .line 367
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    .line 368
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    .line 369
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    invoke-virtual {v0}, Lftd;->f()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    invoke-virtual {v0}, Lftq;->c()Lftd;

    move-result-object v0

    invoke-virtual {v0}, Lftd;->f()Ljava/util/Vector;

    move-result-object v4

    move v1, v2

    .line 374
    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 375
    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 376
    new-instance v5, Lfpb;

    invoke-direct {v5}, Lfpb;-><init>()V

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0905ac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lfpb;->a(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v5, v2}, Lfpb;->a(I)V

    .line 379
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 382
    :cond_0
    new-instance v0, Lfpb;

    invoke-direct {v0}, Lfpb;-><init>()V

    .line 383
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfpb;->a(I)V

    .line 384
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v0, Lfpk;

    invoke-direct {v0, p0, v3}, Lfpk;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    .line 387
    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->A:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 389
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->A:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v2}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 391
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->A:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lflz;

    invoke-direct {v1, p0, v3}, Lflz;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Ljava/util/Vector;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 403
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->M:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->M:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 405
    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpb;

    invoke-virtual {v0}, Lfpb;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpb;

    invoke-virtual {v0}, Lfpb;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, " DIAS"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->A:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v2}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 417
    :cond_1
    return-void

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->A:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, v2}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 412
    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpb;

    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfpb;->a(Ljava/lang/String;)V

    .line 404
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static synthetic e(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lftq;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->b:Lftq;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/RendaFixaAplicacaoActivity;)I
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->g:I

    return v0
.end method

.method public static synthetic g(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/RendaFixaAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->d()V

    return-void
.end method

.method public static synthetic i(Lcom/santander/app/RendaFixaAplicacaoActivity;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->w:Z

    return v0
.end method

.method public static synthetic j(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->x:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/RendaFixaAplicacaoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lfmf;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->D:Lfmf;

    return-object v0
.end method

.method public static synthetic m(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lfmg;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->E:Lfmg;

    return-object v0
.end method

.method public static synthetic n(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->A:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic o(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->z:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method public static synthetic p(Lcom/santander/app/RendaFixaAplicacaoActivity;)Lfos;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->C:Lfos;

    return-object v0
.end method

.method public static synthetic q(Lcom/santander/app/RendaFixaAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->b:Lftq;

    .line 427
    const-string v0, "Investimentos_RendaFixa_Aplicar_Acao"

    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->b:Lftq;

    invoke-virtual {v1}, Lftq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p1}, Lcom/santander/app/RendaFixaAplicacaoActivity;->d(I)V

    .line 430
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 118
    iput-object p0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->d:Lcom/santander/app/RendaFixaAplicacaoActivity;

    .line 120
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 122
    const v0, 0x7f040284

    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->setContentView(I)V

    .line 123
    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 127
    const v2, 0x7f0900cc

    invoke-virtual {p0, v2}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 129
    const-string v0, "listaProdutos"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    .line 130
    const-string v0, "data"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lftq;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->b:Lftq;

    .line 132
    const-string v0, "cardPreferences"

    invoke-virtual {p0, v0, v3}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->Q:Landroid/content/SharedPreferences;

    .line 133
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->Q:Landroid/content/SharedPreferences;

    const-string v2, "isCardCDB"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->O:Z

    .line 135
    iget-boolean v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->O:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "isCardCDB"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    invoke-direct {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->b()V

    .line 138
    invoke-direct {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->c()V

    .line 141
    :cond_0
    const-string v0, "chamarListaProdutos"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->G:Ljava/util/List;

    if-nez v0, :cond_3

    .line 142
    :cond_1
    const-string v0, "CRMTipo"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "CodProduto"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    const-string v0, "CRMTipo"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->S:Ljava/lang/String;

    .line 144
    const-string v0, "CodProduto"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->T:Ljava/lang/String;

    .line 149
    :goto_0
    new-instance v0, Lfme;

    iget-object v1, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->S:Ljava/lang/String;

    iget-object v2, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->T:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lfme;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfme;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    :goto_1
    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->L:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->S:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->K:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->T:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_3
    invoke-direct {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->a()V

    goto :goto_1
.end method

.method public openConfirmar(Lftt;Ljava/lang/String;Lfuu;Ljava/lang/String;ZLjava/lang/String;Lftd;)V
    .locals 3

    .prologue
    .line 189
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string v1, "producto"

    iget-object v2, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->b:Lftq;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 193
    const-string v1, "respSimularAplicacao"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 194
    const-string v1, "valorAplicado"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "cuentaOrigen"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 196
    const-string v1, "prazo"

    invoke-virtual {p1}, Lftt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "agendada"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    const-string v1, "fecha"

    invoke-static {}, Lnak;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "dataAgendamento"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "dadoAplicacao"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method public sendConfirmar(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lfmh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfmh;-><init>(Lcom/santander/app/RendaFixaAplicacaoActivity;Lflx;)V

    iput-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->F:Lfmh;

    .line 180
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->F:Lfmh;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfmh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/santander/app/RendaFixaAplicacaoActivity;->d:Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-virtual {p0}, Lcom/santander/app/RendaFixaAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
