.class public Ljwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljub;
.implements Ljwf;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljua;

.field private c:Ljvl;

.field private d:Lmxf;

.field private e:Ljsr;

.field private f:Z

.field private g:Lgpe;


# direct methods
.method public constructor <init>(Ljvl;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Ljwg;->a:Landroid/app/Activity;

    .line 39
    iput-object p1, p0, Ljwg;->c:Ljvl;

    .line 40
    new-instance v0, Ljuc;

    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Ljuc;-><init>(Landroid/app/Activity;Ljub;)V

    iput-object v0, p0, Ljwg;->b:Ljua;

    .line 41
    new-instance v0, Lmxf;

    invoke-direct {v0}, Lmxf;-><init>()V

    iput-object v0, p0, Ljwg;->d:Lmxf;

    .line 42
    new-instance v0, Ljsr;

    invoke-direct {v0}, Ljsr;-><init>()V

    iput-object v0, p0, Ljwg;->e:Ljsr;

    .line 43
    return-void
.end method

.method static synthetic a(Ljwg;)Ljvl;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljwg;->c:Ljvl;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ljwg;->g:Lgpe;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Ljwg;->g:Lgpe;

    invoke-virtual {v0}, Lgpe;->a()Z

    .line 50
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljwh;

    new-instance v1, Lgpi;

    invoke-direct {v1}, Lgpi;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Ljwh;-><init>(Ljwg;Landroid/view/View;Lgpj;)V

    iput-object v0, p0, Ljwg;->g:Lgpe;

    .line 177
    iget-object v0, p0, Ljwg;->g:Lgpe;

    invoke-virtual {v0}, Lgpe;->a()Z

    .line 178
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x24

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljwg;->f:Z

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Ljwg;->c:Ljvl;

    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090395

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljvl;->a(Ljava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljwg;->f:Z

    .line 67
    return-void

    .line 56
    :cond_1
    iget-boolean v0, p0, Ljwg;->f:Z

    if-nez v0, :cond_0

    .line 57
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 59
    iget-object v1, p0, Ljwg;->c:Ljvl;

    iget-object v2, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090392

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljvl;->a(Ljava/lang/String;)V

    .line 64
    :cond_2
    :goto_1
    iget-object v1, p0, Ljwg;->b:Ljua;

    invoke-interface {v1, v0}, Ljua;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljsr;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ljwg;->c:Ljvl;

    invoke-interface {v0, p1}, Ljvl;->a(Ljsr;)V

    .line 137
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ljwg;->c:Ljvl;

    invoke-interface {v0}, Ljvl;->a()V

    .line 132
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 88
    const/16 v1, 0x36

    .line 89
    iget-object v2, p0, Ljwg;->d:Lmxf;

    invoke-virtual {v2, v0}, Lmxf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v2, p0, Ljwg;->c:Ljvl;

    invoke-interface {v2, v0, v1}, Ljvl;->a(Ljava/lang/String;I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const/16 v1, 0x33

    .line 78
    iget-object v2, p0, Ljwg;->d:Lmxf;

    invoke-virtual {v2, v0}, Lmxf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v2, p0, Ljwg;->c:Ljvl;

    invoke-interface {v2, v0, v1}, Ljvl;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Ljwg;->c:Ljvl;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljvl;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Ljwg;->c:Ljvl;

    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljvl;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljsr;)V
    .locals 3

    .prologue
    const v2, 0x7f09043f

    .line 141
    if-nez p1, :cond_0

    .line 142
    iget-object v0, p0, Ljwg;->c:Ljvl;

    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljvl;->a(Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljsr;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Ljwg;->c:Ljvl;

    invoke-virtual {p1}, Ljsr;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljvl;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Ljwg;->c:Ljvl;

    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljvl;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "codigoBarras"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v0, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "codigoBarras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    iget-object v0, p0, Ljwg;->c:Ljvl;

    invoke-interface {v0}, Ljvl;->b()V

    .line 167
    :goto_1
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cod_barras_acordo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v0, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cod_barras_acordo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "codigoBarrasDDA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v0, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "codigoBarrasDDA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_3
    iget-object v1, p0, Ljwg;->c:Ljvl;

    invoke-interface {v1, v0}, Ljvl;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    iget-object v0, p0, Ljwg;->e:Ljsr;

    const-string v1, "PagBolCob"

    invoke-virtual {v0, v1}, Ljsr;->n(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Ljwg;->d:Lmxf;

    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lmxf;->b(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Ljwg;->b(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Ljwg;->e:Ljsr;

    const-string v1, "pagTit"

    invoke-virtual {v0, v1}, Ljsr;->n(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Ljwg;->d:Lmxf;

    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lmxf;->a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Ljwg;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljwg;->f:Z

    .line 125
    iget-object v1, p0, Ljwg;->c:Ljvl;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljvl;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Ljwg;->c:Ljvl;

    iget-object v1, p0, Ljwg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljvl;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Ljwg;->f:Z

    return v0
.end method
