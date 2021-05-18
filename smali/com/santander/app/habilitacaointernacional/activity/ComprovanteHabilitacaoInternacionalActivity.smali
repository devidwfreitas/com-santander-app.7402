.class public Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;
.super Lgoj;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Landroid/widget/ImageView;

.field private final E:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ListView;

.field private f:Lfqk;

.field private g:Lino;

.field private w:Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->C:Ljava/lang/String;

    .line 54
    const-string v0, "ComprovanteHabilitacaoInternacionalActivity"

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->E:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->y:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->x:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;)Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->w:Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 157
    const/16 v2, 0x50

    .line 158
    const/4 v0, 0x0

    .line 159
    iget-object v3, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->b:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    move-object v2, v0

    move v0, v1

    .line 160
    :goto_0
    iget-object v5, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->g:Lino;

    invoke-virtual {v5}, Lino;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 162
    iget-object v5, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->g:Lino;

    iget-object v6, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v5, v0, v2, v6}, Lino;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 163
    if-nez v0, :cond_0

    .line 164
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_0
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    .line 166
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->g:Lino;

    invoke-virtual {v2}, Lino;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 193
    :goto_1
    return-void

    :cond_2
    move v3, v2

    move-object v2, v0

    move v0, v1

    .line 176
    :goto_2
    iget-object v5, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->f:Lfqk;

    invoke-virtual {v5}, Lfqk;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 178
    iget-object v5, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->f:Lfqk;

    iget-object v6, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v5, v0, v2, v6}, Lfqk;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 179
    if-nez v0, :cond_3

    .line 180
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :cond_3
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    .line 182
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->f:Lfqk;

    invoke-virtual {v2}, Lfqk;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->D:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 217
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->D:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    const v0, 0x7f10052e

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f040215

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->setContentView(I)V

    .line 61
    iput-object p0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->w:Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 64
    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "AutenticacaoBancaria"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    const v0, 0x7f100a3c

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "cartao"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->z:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "FINALCARTAO"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->C:Ljava/lang/String;

    .line 71
    iget-object v3, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f1007f3

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v0, 0x7f100541

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v0, 0x7f100a3d

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    .line 78
    const v0, 0x7f1007f4

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->x:Landroid/widget/Button;

    .line 79
    const v0, 0x7f100a3a

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->A:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "operacao"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->B:I

    .line 82
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->D:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->x:Landroid/widget/Button;

    new-instance v2, Liml;

    invoke-direct {v2, p0}, Liml;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f100542

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->y:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->y:Landroid/widget/Button;

    new-instance v2, Limm;

    invoke-direct {v2, p0}, Limm;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "passo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->b:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "lista"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 121
    iget-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->b:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    new-instance v2, Lino;

    invoke-direct {v2, v0, p0}, Lino;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->g:Lino;

    .line 124
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->g:Lino;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    invoke-direct {p0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c()V

    .line 134
    :goto_0
    const v0, 0x7f090515

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 136
    iget v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->B:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_1
    return-void

    .line 128
    :cond_0
    new-instance v2, Lfqk;

    invoke-direct {v2, v0, p0}, Lfqk;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->f:Lfqk;

    .line 130
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->f:Lfqk;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    invoke-direct {p0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->c()V

    goto :goto_0

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->A:Landroid/widget/TextView;

    const-string v1, "cadastradas com sucesso"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->A:Landroid/widget/TextView;

    const-string v1, "alteradas com sucesso"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->A:Landroid/widget/TextView;

    const-string v1, "excluidas com sucesso"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Lgoj;->onResume()V

    .line 204
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;->a()V

    .line 205
    return-void
.end method
