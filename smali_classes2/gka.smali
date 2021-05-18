.class public Lgka;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lgie;",
        "Ljava/lang/Void;",
        "Lgid;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;

.field private c:Lgkv;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgkv;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lgka;->a:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lgka;->c:Lgkv;

    .line 32
    return-void
.end method

.method private a()Lgid;
    .locals 5

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\">\n   <soapenv:Body>\n      <dlwmin:obterCodigoBarraResponse xmlns:dlwmin=\"http://webservice.mbb.app.bsbr.altec.com/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n         <return>\n            <codigoBarra>03399.49281 36981.624608 00000.901025 8 00000000000000      </codigoBarra>\n            <codigoRetorno>0</codigoRetorno>\n            <dataHash>B+ImS7D8UwLuv1DuKrnOujr/N6wbSB0NOYsZp255XoERVebDU+ZdeFHxyBfReR0IFCaj6vzv7XjqkqzgKrTMszWqSqXaGY82xzFXc3fJ9J4=</dataHash>\n            <requestId>da8ec034-201a-4ab7-9b81-b79a683ba82a</requestId>\n            <autenticacao>da8ec034-201a-4ab7-9b81-b79a683ba82a</autenticacao>\n         </return>\n      </dlwmin:obterCodigoBarraResponse>\n   </soapenv:Body>\n</soapenv:Envelope>"

    .line 80
    new-instance v2, Lmzd;

    invoke-direct {v2}, Lmzd;-><init>()V

    .line 82
    :try_start_0
    const-string v3, "return"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lmzd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-class v3, Lgid;

    invoke-virtual {v2, v3, v0}, Lmzd;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgid;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v2, "ERROR_PARSER"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Lgie;)Lgid;
    .locals 6

    .prologue
    .line 42
    .line 44
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 45
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 47
    const-class v2, Lgid;

    invoke-static {}, Lhas;->w()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obterCodigoBarra"

    const-string v5, "return"

    invoke-virtual/range {v0 .. v5}, Lgog;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgid;

    .line 48
    return-object v0
.end method

.method protected a(Lgid;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lgka;->c:Lgkv;

    invoke-interface {v0, p1}, Lgkv;->a(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lgka;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lgka;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lgka;->b:Landroid/app/Dialog;

    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Lgie;

    invoke-virtual {p0, p1}, Lgka;->a([Lgie;)Lgid;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lgid;

    invoke-virtual {p0, p1}, Lgka;->a(Lgid;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 37
    iget-object v0, p0, Lgka;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgka;->b:Landroid/app/Dialog;

    .line 38
    return-void
.end method
