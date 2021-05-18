.class public Lkna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lkna;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lkna;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->g(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lkna;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->h(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 198
    iget-object v1, p0, Lkna;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->a(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lkna;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->c(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 204
    :try_start_0
    iget-object v1, p0, Lkna;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->a(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 205
    :try_start_1
    iget-object v3, p0, Lkna;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v3}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->c(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 210
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lkna;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v3}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lklu;->f(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lkna;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lklu;->g(Ljava/lang/String;)V

    .line 216
    :cond_0
    const-string v0, "Outros_Comprovantes_Acao"

    const-string v1, "Aplicar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lkna;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;

    move-result-object v0

    invoke-interface {v0}, Lkni;->a()V

    .line 220
    :cond_1
    return-void

    .line 206
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 207
    :goto_1
    const-string v3, "Error"

    invoke-virtual {v2}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :catch_1
    move-exception v2

    goto :goto_1
.end method
