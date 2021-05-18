.class public Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lkms;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ListView;

.field private d:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private e:Lcom/santander/app/contacorrente/domain/Conta;

.field private f:Landroid/app/Dialog;

.field private g:Lknb;

.field private w:I

.field private x:Lklu;

.field private y:Lkng;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->w:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->e:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->e:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)Lklu;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->x:Lklu;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)Lkng;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->y:Lkng;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 70
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->d:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 71
    const v0, 0x7f100c9c

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f100c9e

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f100c9f

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->c:Landroid/widget/ListView;

    .line 74
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f0e0019

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->i()V

    .line 80
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->j()V

    .line 81
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->w:I

    .line 188
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    const-string v0, "Alerta"

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 120
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lklx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lklx;

    invoke-direct {v0}, Lklx;-><init>()V

    .line 154
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklx;->a(Ljava/lang/Boolean;)V

    .line 155
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {v0, p2}, Lklx;->e(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklx;->a(Ljava/lang/Boolean;)V

    .line 159
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_1
    invoke-virtual {v0}, Lklx;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->f()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    :goto_0
    new-instance v0, Lknb;

    invoke-direct {v0, p0, p1}, Lknb;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->g:Lknb;

    .line 169
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->f()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->g:Lknb;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    return-void

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->f()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public a(Lklx;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->y:Lkng;

    invoke-interface {v0, p1}, Lkng;->a(Lklx;)V

    .line 192
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 125
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 129
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->f:Landroid/app/Dialog;

    .line 130
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->f:Landroid/app/Dialog;

    .line 139
    :cond_0
    return-void
.end method

.method public e()Lklu;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->x:Lklu;

    return-object v0
.end method

.method public f()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public g()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 148
    return-object p0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->w:I

    return v0
.end method

.method public i()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 84
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->x:Lklu;

    invoke-virtual {v1}, Lklu;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    :try_start_1
    iget-object v3, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->x:Lklu;

    invoke-virtual {v3}, Lklu;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 94
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " at\u00e9 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void

    .line 90
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 91
    :goto_1
    const-string v3, "Error"

    invoke-virtual {v2}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public j()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->d:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {}, Lgmy;->e()Lamy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->d:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lkmt;

    invoke-direct {v1, p0}, Lkmt;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 115
    return-void
.end method

.method k()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lkmu;

    invoke-direct {v0, p0}, Lkmu;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f04030a

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extraInformacoes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lklu;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->x:Lklu;

    .line 63
    const v0, 0x7f090abb

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->c(I)V

    .line 64
    new-instance v0, Lknh;

    invoke-direct {v0, p0}, Lknh;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)V

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->y:Lkng;

    .line 65
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a()V

    .line 66
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->g:Lknb;

    invoke-virtual {v0, p3}, Lknb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklx;

    .line 177
    invoke-virtual {p0, p3}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a(I)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->a(Lklx;)V

    .line 179
    return-void
.end method
