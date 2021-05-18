.class Lgxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgsz;


# instance fields
.field final synthetic a:Lgxg;


# direct methods
.method constructor <init>(Lgxg;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lgxj;->a:Lgxg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lgta;I)V
    .locals 2
    .param p2    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 422
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->j(Lgxg;)Lhya;

    move-result-object v0

    new-instance v1, Lgxp;

    invoke-direct {v1, p0, p2}, Lgxp;-><init>(Lgxj;I)V

    invoke-interface {v0, p2, v1}, Lhya;->a(ILhxy;)V

    .line 451
    return-void
.end method

.method static synthetic a(Lgxj;Lgta;I)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lgxj;->a(Lgta;I)V

    return-void
.end method


# virtual methods
.method public a(Lgta;)V
    .locals 3

    .prologue
    .line 161
    const-string v0, "CARD_CRM"

    const-string v1, "LEFT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->b(Lgxg;)Lgww;

    move-result-object v0

    invoke-static {p1, v0}, Lgwn;->a(Lgta;Lgww;)V

    .line 164
    sget-object v0, Lgxr;->a:[I

    invoke-virtual {p1}, Lgta;->e()Lgwq;

    move-result-object v1

    invoke-virtual {v1}, Lgwq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lgxj;->a:Lgxg;

    new-instance v1, Lgxk;

    invoke-direct {v1, p0, p1}, Lgxk;-><init>(Lgxj;Lgta;)V

    const-string v2, "N"

    invoke-static {v0, v1, p1, v2}, Lgxg;->a(Lgxg;Lgkw;Lgta;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p0, Lgxj;->a:Lgxg;

    new-instance v1, Lgxl;

    invoke-direct {v1, p0, p1}, Lgxl;-><init>(Lgxj;Lgta;)V

    const-string v2, "N"

    invoke-static {v0, v1, p1, v2}, Lgxg;->a(Lgxg;Lgkw;Lgta;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_3
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->c(Lgxg;)Lhtz;

    move-result-object v0

    invoke-virtual {v0}, Lhtz;->a()V

    .line 197
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :pswitch_4
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->d(Lgxg;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isCardCDB"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 204
    :pswitch_5
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->e(Lgxg;)Lgyd;

    move-result-object v0

    invoke-virtual {v0}, Lgyd;->a()V

    .line 206
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->e(Lgxg;)Lgyd;

    move-result-object v0

    invoke-virtual {v0}, Lgyd;->o()V

    goto/16 :goto_0

    .line 210
    :pswitch_6
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {v0}, Lzs;->b()V

    .line 214
    :pswitch_7
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->f(Lgxg;)Lhhq;

    move-result-object v0

    invoke-virtual {v0}, Lhhq;->a()V

    goto/16 :goto_0

    .line 217
    :pswitch_8
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->g(Lgxg;)Lhxh;

    move-result-object v0

    invoke-virtual {v0}, Lhxh;->a()V

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public b(Lgta;)V
    .locals 2

    .prologue
    .line 224
    const-string v0, "CARD_CRM"

    const-string v1, "RIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->b(Lgxg;)Lgww;

    move-result-object v0

    invoke-static {p1, v0}, Lgwn;->b(Lgta;Lgww;)V

    .line 226
    return-void
.end method

.method public c(Lgta;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 270
    const-string v0, "CARD_CRM"

    const-string v1, "CLICK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->b(Lgxg;)Lgww;

    move-result-object v0

    invoke-static {p1, v0}, Lgwn;->c(Lgta;Lgww;)V

    .line 273
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Lgta;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    invoke-interface {v0}, Lgxu;->g()V

    .line 419
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p1}, Lgta;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    invoke-interface {v0, p1}, Lgxu;->c(Lgta;)V

    .line 284
    :cond_1
    invoke-virtual {p1, v2}, Lgta;->d(Z)V

    .line 286
    sget-object v0, Lgxr;->a:[I

    invoke-virtual {p1}, Lgta;->e()Lgwq;

    move-result-object v1

    invoke-virtual {v1}, Lgwq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 290
    :pswitch_0
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-virtual {v0, p1}, Lgxg;->a(Lgta;)V

    .line 291
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->a(Ljava/lang/Boolean;)V

    .line 292
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->b(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 295
    :pswitch_1
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->a(Ljava/lang/Boolean;)V

    .line 296
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->b(Ljava/lang/Boolean;)V

    .line 297
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    invoke-interface {v0}, Lgxu;->f()V

    goto/16 :goto_0

    .line 300
    :pswitch_2
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    .line 301
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->c(Lgxg;)Lhtz;

    move-result-object v0

    invoke-virtual {v0}, Lhtz;->a()V

    .line 302
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->b(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 305
    :pswitch_3
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/RendaFixaAplicacaoActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    .line 306
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->b(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 309
    :pswitch_4
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->f(Lgxg;)Lhhq;

    move-result-object v0

    invoke-virtual {v0}, Lhhq;->a()V

    .line 310
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 313
    :pswitch_5
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->g(Lgxg;)Lhxh;

    move-result-object v0

    invoke-virtual {v0}, Lhxh;->a()V

    .line 314
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 317
    :pswitch_6
    invoke-static {}, Ljor;->c()V

    .line 318
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->a(Ljava/lang/Boolean;)V

    .line 319
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->b(Ljava/lang/Boolean;)V

    .line 320
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 323
    :pswitch_7
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "CARRINHO_ABANDONADO"

    invoke-static {v0, v1}, Ljcw;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :pswitch_8
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    invoke-interface {v0}, Lgxu;->g()V

    goto/16 :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 334
    :pswitch_9
    iget-object v0, p0, Lgxj;->a:Lgxg;

    new-instance v1, Lgxn;

    invoke-direct {v1, p0, p1}, Lgxn;-><init>(Lgxj;Lgta;)V

    const-string v2, "S"

    invoke-static {v0, v1, p1, v2}, Lgxg;->a(Lgxg;Lgkw;Lgta;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    :pswitch_a
    iget-object v0, p0, Lgxj;->a:Lgxg;

    new-instance v1, Lgxo;

    invoke-direct {v1, p0, p1}, Lgxo;-><init>(Lgxj;Lgta;)V

    const-string v2, "S"

    invoke-static {v0, v1, p1, v2}, Lgxg;->a(Lgxg;Lgkw;Lgta;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public d(Lgta;)V
    .locals 3

    .prologue
    .line 230
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgta;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->b(Lgxg;)Lgww;

    move-result-object v0

    invoke-static {p1, v0}, Lgwn;->d(Lgta;Lgww;)V

    .line 232
    const/4 v2, -0x1

    .line 234
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 235
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    invoke-virtual {v0}, Lgwx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgta;->b(Z)V

    .line 244
    :goto_1
    sget-object v0, Lgxr;->a:[I

    invoke-virtual {p1}, Lgta;->e()Lgwq;

    move-result-object v2

    invoke-virtual {v2}, Lgwq;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 266
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    .line 234
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lgxj;->a:Lgxg;

    new-instance v2, Lgxm;

    invoke-direct {v2, p0, v1}, Lgxm;-><init>(Lgxj;I)V

    invoke-static {v0, v2, p1}, Lgxg;->a(Lgxg;Lgkw;Lgta;)V

    goto :goto_2

    .line 262
    :pswitch_2
    invoke-static {}, Ljor;->b()V

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
