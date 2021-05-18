.class public Lkfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkdy;
.implements Lkfl;


# instance fields
.field private a:Lkej;

.field private b:Lkdx;

.field private c:Lmip;

.field private d:Lgvb;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lkdg;


# direct methods
.method public constructor <init>(Lkej;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lkfm;->a:Lkej;

    .line 42
    new-instance v0, Lkdz;

    invoke-direct {v0, p0}, Lkdz;-><init>(Lkdy;)V

    iput-object v0, p0, Lkfm;->b:Lkdx;

    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lkfm;->c:Lmip;

    .line 44
    invoke-interface {p1}, Lkej;->d()Lkdg;

    move-result-object v0

    iput-object v0, p0, Lkfm;->f:Lkdg;

    .line 45
    return-void
.end method

.method private c(Lkdk;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkdk;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkfm;->e:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lgky;

    const-string v1, "Plano:"

    iget-object v2, p0, Lkfm;->f:Lkdg;

    invoke-virtual {v2}, Lkdg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lkfm;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Lgky;

    const-string v1, "Certificado:"

    iget-object v2, p0, Lkfm;->f:Lkdg;

    invoke-virtual {v2}, Lkdg;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lkfm;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkdk;->c()Lkda;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkdk;->c()Lkda;

    move-result-object v0

    invoke-virtual {v0}, Lkda;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lgky;

    const-string v1, "Regime de tributa\u00e7\u00e3o"

    invoke-virtual {p1}, Lkdk;->c()Lkda;

    move-result-object v2

    invoke-virtual {v2}, Lkda;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lkfm;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    new-instance v0, Lgky;

    const-string v1, "Valor:"

    iget-object v2, p0, Lkfm;->f:Lkdg;

    invoke-virtual {v2}, Lkdg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lkfm;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkdk;->c()Lkda;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkdk;->c()Lkda;

    move-result-object v0

    invoke-virtual {v0}, Lkda;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Lgky;

    const-string v1, "Data do aporte:"

    invoke-virtual {p1}, Lkdk;->c()Lkda;

    move-result-object v2

    invoke-virtual {v2}, Lkda;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lkfm;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_0
    iget-object v0, p0, Lkfm;->e:Ljava/util/ArrayList;

    return-object v0

    .line 136
    :cond_1
    new-instance v0, Lgky;

    const-string v1, "Data do aporte:"

    invoke-virtual {p0}, Lkfm;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lkfm;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private d(Lkdk;)V
    .locals 4

    .prologue
    const v3, 0x7f090639

    .line 145
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    iput-object v0, p0, Lkfm;->d:Lgvb;

    .line 147
    iget-object v0, p0, Lkfm;->d:Lgvb;

    const-string v1, "prev.Share"

    invoke-virtual {v0, v1}, Lgvb;->j(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lkfm;->d:Lgvb;

    invoke-direct {p0, p1}, Lkfm;->c(Lkdk;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 150
    invoke-virtual {p1}, Lkdk;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lkfm;->d:Lgvb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkfm;->a:Lkej;

    invoke-interface {v2}, Lkej;->j()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lkdk;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->g(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lkfm;->d:Lgvb;

    invoke-virtual {p1}, Lkdk;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 159
    :goto_0
    invoke-virtual {p1}, Lkdk;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lkfm;->d:Lgvb;

    invoke-virtual {p1}, Lkdk;->getAutenticacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lkfm;->d:Lgvb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 164
    iget-object v0, p0, Lkfm;->d:Lgvb;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->h(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lkfm;->d:Lgvb;

    iget-object v1, p0, Lkfm;->a:Lkej;

    invoke-interface {v1}, Lkej;->j()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090ab5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lkfm;->d:Lgvb;

    iget-object v1, p0, Lkfm;->a:Lkej;

    invoke-interface {v1}, Lkej;->j()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0906f5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lkfm;->d:Lgvb;

    sget-object v1, Lgvu;->COMPROVANTE_PREVIDENCIA:Lgvu;

    invoke-virtual {v0, v1}, Lgvb;->a(Lgvu;)V

    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lkfm;->a:Lkej;

    invoke-interface {v1}, Lkej;->j()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string v1, "comprovanteBase"

    iget-object v2, p0, Lkfm;->d:Lgvb;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lkfm;->a:Lkej;

    invoke-interface {v1}, Lkej;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lkfm;->d:Lgvb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkfm;->a:Lkej;

    invoke-interface {v2}, Lkej;->j()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkfm;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->g(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lkfm;->d:Lgvb;

    invoke-virtual {p0}, Lkfm;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->c()V

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 187
    :goto_1
    return-void

    .line 177
    :pswitch_0
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->o()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f09064f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 180
    iget-object v0, p0, Lkfm;->a:Lkej;

    const v1, 0x7f090651

    invoke-interface {v0, v1}, Lkej;->a(I)V

    goto :goto_1

    .line 183
    :pswitch_3
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->o()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f09065c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 184
    iget-object v0, p0, Lkfm;->a:Lkej;

    const v1, 0x7f090652

    invoke-interface {v0, v1}, Lkej;->a(I)V

    goto :goto_1

    .line 177
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lkdk;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->h()V

    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkdk;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lkfm;->d(Lkdk;)V

    .line 81
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->g()V

    .line 62
    new-instance v0, Lkdl;

    invoke-direct {v0}, Lkdl;-><init>()V

    .line 63
    iget-object v1, p0, Lkfm;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkdl;->setTokenTransacao(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lkfm;->c:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkdl;->setTokenSessao(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lkfm;->c:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkdl;->setConnUuid(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lkfm;->f:Lkdg;

    invoke-virtual {v1}, Lkdg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkdl;->setAgencia(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lkfm;->f:Lkdg;

    invoke-virtual {v1}, Lkdg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkdl;->setConta(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lkfm;->f:Lkdg;

    invoke-virtual {v1}, Lkdg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkdl;->a(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lkfm;->f:Lkdg;

    invoke-virtual {v1}, Lkdg;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lkdl;->b(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lkfm;->b:Lkdx;

    invoke-interface {v1, v0}, Lkdx;->a(Lkdl;)V

    .line 73
    return-void
.end method

.method public b(Lkdk;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->h()V

    .line 86
    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p1}, Lkdk;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Lkdk;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-virtual {p1}, Lkdk;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkej;->a(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->i()V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->i()V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->i()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->k()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lkfm;->a:Lkej;

    invoke-interface {v0}, Lkej;->f()V

    .line 57
    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 211
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 212
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 216
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 195
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 196
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 200
    return-object v0
.end method
