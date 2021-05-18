.class public Linb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lioh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lioh;
    .locals 3

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 230
    :try_start_0
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->e()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Limk;

    move-result-object v2

    invoke-virtual {v2}, Limk;->a()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->H()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {}, Lhat;->t()Liot;

    move-result-object v2

    invoke-virtual {v2, v0}, Liot;->a(Ljava/lang/String;)Lioh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v2, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lioh;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 240
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 242
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a:Landroid/app/Dialog;

    .line 244
    :cond_0
    const-string v0, "Santander:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetConsultaViagensTask response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lioh;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Linc;

    invoke-direct {v0, p0}, Linc;-><init>(Linb;)V

    .line 254
    if-eqz p1, :cond_3

    .line 255
    invoke-virtual {p1}, Lioh;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 257
    new-instance v0, Lioh;

    invoke-direct {v0}, Lioh;-><init>()V

    .line 261
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lioh;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-virtual {p1}, Lioh;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    iget-object v1, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    new-instance v2, Linu;

    iget-object v3, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-direct {v2, v0, v3}, Linu;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;Linu;)Linu;

    .line 267
    iget-object v1, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->f(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Linu;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    iget-object v1, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v1, v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 269
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->d(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V

    .line 270
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->g(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Lioh;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lioh;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v0, v3}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;I)V

    .line 274
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-virtual {p1}, Lioh;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 275
    iget-object v1, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    new-instance v2, Linu;

    iget-object v3, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-direct {v2, v0, v3}, Linu;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;Linu;)Linu;

    .line 277
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->f(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Linu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->g(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v4}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 282
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->g(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_3
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v3, v4}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 286
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->g(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Linb;->a([Ljava/lang/Void;)Lioh;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Lioh;

    invoke-virtual {p0, p1}, Linb;->a(Lioh;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    iget-object v1, p0, Linb;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a:Landroid/app/Dialog;

    .line 224
    return-void
.end method
