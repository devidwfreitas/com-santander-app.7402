.class public Liob;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lhbd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;


# direct methods
.method private constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Liob;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhbd;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 514
    :try_start_0
    invoke-virtual {p0}, Liob;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    :goto_0
    return-object v0

    .line 518
    :cond_0
    invoke-static {}, Lhat;->i()Lhbc;

    move-result-object v1

    invoke-virtual {v1}, Lhbc;->b()Lhbd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lhbd;)V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 503
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Liob;->a([Ljava/lang/Void;)Lhbd;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 503
    check-cast p1, Lhbd;

    invoke-virtual {p0, p1}, Liob;->a(Lhbd;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method
