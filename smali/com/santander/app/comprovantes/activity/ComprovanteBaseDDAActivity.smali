.class public Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;
.super Lgoj;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Ljsp;

.field private D:Ljsr;

.field private E:Ljava/lang/String;

.field protected a:Landroid/widget/LinearLayout;

.field protected b:Landroid/widget/LinearLayout;

.field protected c:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lgoj;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 201
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v0}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 82
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->c:Landroid/widget/LinearLayout;

    .line 83
    const v0, 0x7f1005d5

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->A:Landroid/widget/LinearLayout;

    .line 84
    const v0, 0x7f10019b

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->B:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->b:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->f:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f100199

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->g:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f1005cf

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->w:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->x:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f1001a1

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->y:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f10019f

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->z:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->g:Landroid/widget/TextView;

    const-string v1, "Agendamento n\u00e3o realizado"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->z:Landroid/widget/TextView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "dd/MM/yyyy - HH:mm:ss"

    invoke-static {v1, v2}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->D:Ljsr;

    invoke-virtual {v0}, Ljsr;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->D:Ljsr;

    invoke-virtual {v0}, Ljsr;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    :cond_0
    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lguy;

    invoke-direct {v1, p0}, Lguy;-><init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lguz;

    invoke-direct {v1, p0}, Lguz;-><init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->x:Landroid/widget/ImageView;

    const v1, 0x7f0204ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_2
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->g:Landroid/widget/TextView;

    const-string v1, "Agendamento realizado com sucesso!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->D:Ljsr;

    invoke-virtual {v1}, Ljsr;->getAutenticacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->x:Landroid/widget/ImageView;

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private g()V
    .locals 10

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nome do benefici\u00e1rio original: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->D:Ljsr;

    invoke-virtual {v2}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "Benefici\u00e1rio"

    invoke-direct {p0, v2, v3}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Valor do t\u00edtulo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->D:Ljsr;

    invoke-virtual {v3}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "Valor a receber "

    invoke-direct {p0, v3, v4}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 177
    iget-object v3, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->D:Ljsr;

    invoke-virtual {v3}, Ljsr;->q()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yyyyMMdd"

    invoke-static {v3, v4}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data de vencimento: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dd/MM/yyyy"

    invoke-static {v3, v5}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Agendado para: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->C:Ljsp;

    invoke-virtual {v5}, Ljsp;->c()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const-string v6, "dd/MM/yyyy"

    invoke-static {v5, v6}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "N\u00famero de recorr\u00eancias: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->C:Ljsp;

    invoke-virtual {v6}, Ljsp;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    const-string v6, "Valor m\u00e1ximo para pagamento recorrente: R$ "

    iget-object v7, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->C:Ljsp;

    invoke-virtual {v7}, Ljsp;->b()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v7}, Laep;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v6, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->B:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-class v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 252
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 253
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 254
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {p2}, Lgky;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 259
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 265
    :goto_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 266
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-static {p0, v3}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    invoke-virtual {p2}, Lgky;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {p2}, Lgky;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    return-object v0

    .line 261
    :cond_1
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 262
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p2}, Lgky;->a()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {p2}, Lgky;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 135
    .line 136
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    :goto_0
    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void

    .line 139
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    .line 246
    iget-object v2, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 146
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->k()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->k()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 231
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lgvt;

    invoke-direct {v0}, Lgvt;-><init>()V

    invoke-virtual {v0}, Lgvt;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a(Ljava/util/ArrayList;)V

    .line 241
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->d()Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v1, ""

    .line 165
    const-string v2, ""

    .line 166
    invoke-virtual {p0, v2, v1, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->startActivity(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f040124

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->setContentView(I)V

    .line 68
    const-string v0, "Comprovante"

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->c(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AgendamentoRecorrente"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljsp;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->C:Ljsp;

    .line 71
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Titulos"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljsr;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->D:Ljsr;

    .line 72
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->E:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->f()V

    .line 76
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->g()V

    .line 77
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->e()V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lgoj;->onDestroy()V

    .line 284
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lgoj;->onResume()V

    .line 218
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->c()V

    .line 219
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    :cond_0
    return-void
.end method
