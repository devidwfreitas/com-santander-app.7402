.class public Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljvl;


# static fields
.field public static b:Z

.field public static c:Z


# instance fields
.field public a:Landroid/app/Activity;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Ljwf;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->b:Z

    .line 52
    sput-boolean v0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->w:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Ljwf;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->g:Ljwf;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->w:Z

    return v0
.end method

.method public static synthetic c(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f100cdc

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->d:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f100cdd

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f1009d7

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->f:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->d:Landroid/widget/LinearLayout;

    new-instance v1, Ljvf;

    invoke-direct {v1, p0}, Ljvf;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    new-instance v1, Ljvg;

    invoke-direct {v1, p0}, Ljvg;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    new-instance v1, Ljvh;

    invoke-direct {v1, p0}, Ljvh;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->f:Landroid/widget/Button;

    new-instance v1, Ljvi;

    invoke-direct {v1, p0}, Ljvi;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->f:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    new-instance v0, Levq;

    invoke-direct {v0, p0}, Levq;-><init>(Landroid/app/Activity;)V

    .line 157
    invoke-virtual {v0, v3}, Levq;->b(Z)Levq;

    .line 158
    const-class v1, Lcom/santander/app/components/view/zxing/CustomScannerActivity;

    invoke-virtual {v0, v1}, Levq;->a(Ljava/lang/Class;)Levq;

    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 161
    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->a:Landroid/app/Activity;

    const-string v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {v0}, Levq;->d()V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0}, Levq;->d()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->w:Z

    .line 128
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Ljvj;

    invoke-direct {v2, p0, p2}, Ljvj;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 130
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 132
    iput-boolean v3, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->w:Z

    .line 133
    return-void
.end method

.method public a(Ljsr;)V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    const-string v1, "consultaTitulos"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 200
    sget-boolean v0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->c:Z

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    sput-boolean v0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->c:Z

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 205
    new-instance v1, Ljvk;

    invoke-direct {v1, p0, v0}, Ljvk;-><init>(Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;Landroid/os/Handler;)V

    .line 212
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->g:Ljwf;

    invoke-interface {v0, p1}, Ljwf;->a(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 172
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 173
    invoke-static {p1, p2, p3}, Levq;->a(IILandroid/content/Intent;)Levr;

    move-result-object v0

    .line 175
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Levr;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->g:Ljwf;

    invoke-virtual {v0}, Levr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljwf;->c(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->g:Ljwf;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwf;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 219
    const/4 v0, 0x0

    sput-boolean v0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->c:Z

    .line 220
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f040092

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f090a8c

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->c(I)V

    .line 62
    iput-object p0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->a:Landroid/app/Activity;

    .line 64
    new-instance v0, Ljwg;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Ljwg;-><init>(Ljvl;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->g:Ljwf;

    .line 66
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->c()V

    .line 67
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->g:Ljwf;

    invoke-interface {v0}, Ljwf;->c()V

    .line 68
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->g:Ljwf;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljwf;->a(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lgrs;->onResume()V

    .line 192
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->g:Ljwf;

    invoke-interface {v0}, Ljwf;->a()V

    .line 194
    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
