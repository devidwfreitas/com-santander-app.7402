.class Lish;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lise;


# direct methods
.method constructor <init>(Lise;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lish;->a:Lise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 223
    check-cast p1, Lmir;

    .line 224
    if-nez p1, :cond_0

    .line 225
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    iget-object v1, p0, Lish;->a:Lise;

    invoke-static {v1}, Lise;->e(Lise;)Lmip;

    move-result-object v1

    invoke-interface {v1}, Lmip;->n()Lfvu;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->a(Lfvu;)V

    .line 303
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->e(Lise;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->n()Lfvu;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->e(Lise;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->n()Lfvu;

    move-result-object v0

    invoke-virtual {v0}, Lfvu;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->e(Lise;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->n()Lfvu;

    move-result-object v0

    invoke-virtual {v0}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->e(Lise;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->n()Lfvu;

    move-result-object v0

    invoke-virtual {v0}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Senha inv\u00e1lida"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {}, Lhat;->d()Lhav;

    .line 232
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-interface {v0}, Litf;->c()V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    iget-object v1, p0, Lish;->a:Lise;

    invoke-static {v1}, Lise;->e(Lise;)Lmip;

    move-result-object v1

    invoke-interface {v1}, Lmip;->n()Lfvu;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->a(Lfvu;)V

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    if-nez v0, :cond_3

    .line 239
    const-string v0, "AutenticarUsuario-Null"

    const-string v1, "AutenticarUsuario-Null"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_3
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 243
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v1

    invoke-virtual {v1}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :cond_4
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v1

    invoke-virtual {v1}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :cond_5
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 250
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v1

    invoke-virtual {v1}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_6
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18369"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 253
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    const-string v1, "Voc\u00ea excedeu as tentativas de senha e o seu acesso foi cancelado. Toque em Esqueci a Senha recadastr\u00e1-lo."

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_7
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 257
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v1

    invoke-virtual {v1}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_8
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "416"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 261
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v1

    invoke-virtual {v1}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_9
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18370"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 264
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    const-string v1, "Voc\u00ea excedeu as tentativas de senha e o seu acesso foi cancelado. Toque em Esqueci a Senha recadastr\u00e1-lo."

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :cond_a
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18326"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 267
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    const-string v1, "Senha escolhida j\u00e1 foi utilizada e n\u00e3o poder\u00e1 ser repetida. Por favor, escolha uma nova senha diferente."

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :cond_b
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18306"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 270
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    const-string v1, "Senha informada \u00e9 inv\u00e1lida."

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :cond_c
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18358"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    const-string v1, "Senha inv\u00e1lida. Para sua seguran\u00e7a, a senha de acesso deve ter 6 (seis) n\u00fameros que n\u00e3o podem ser repetidos, nem sequenciais. Tamb\u00e9m n\u00e3o podem ser escolhidas as \u00faltimas senhas j\u00e1 utilizadas."

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_d
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18367"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 276
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    const-string v1, "Senha inv\u00e1lida. Uma nova tentativa incorreta cancelar\u00e1 sua senha, e ser\u00e1 necess\u00e1rio cadastrar uma nova."

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :cond_e
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18328"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 279
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    const-string v1, "Sua senha foi cancelada por medida preventiva de seguran\u00e7a. Por favor, acesse o Internet Banking com seu CPF e cadastre uma nova senha. Em caso de d\u00favidas, entre em contato com a Central de Atendimento."

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_f
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getCodErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "18368"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 282
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    const-string v1, "Notamos que voc\u00ea ainda n\u00e3o \u00e9 nosso cliente. Acesse santander.com.br e abra sua conta."

    invoke-interface {v0, v1}, Litf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :cond_10
    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v0

    invoke-virtual {v0}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "74813"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 285
    const-string v0, "HASHDUPLICADOLOGIN"

    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v1

    invoke-virtual {v1}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v1

    invoke-virtual {v1}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_11
    const-string v0, "LoginInteractorImpl"

    invoke-virtual {p1}, Lmir;->p()Liow;

    move-result-object v1

    invoke-virtual {v1}, Liow;->getMsgErro()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_12
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->e(Lise;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->e(Lise;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 295
    :cond_13
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    iget-object v1, p0, Lish;->a:Lise;

    invoke-static {v1}, Lise;->e(Lise;)Lmip;

    move-result-object v1

    invoke-interface {v1}, Lmip;->n()Lfvu;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->a(Lfvu;)V

    goto/16 :goto_0

    .line 297
    :cond_14
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->e(Lise;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->v()V

    .line 299
    iget-object v0, p0, Lish;->a:Lise;

    invoke-static {v0}, Lise;->f(Lise;)V

    goto/16 :goto_0
.end method
