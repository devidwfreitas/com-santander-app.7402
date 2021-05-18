.class Lfnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lfnx;

.field final synthetic b:Lfoh;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lfnp;


# direct methods
.method constructor <init>(Lfnp;Lfnx;Lfoh;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lfnq;->e:Lfnp;

    iput-object p2, p0, Lfnq;->a:Lfnx;

    iput-object p3, p0, Lfnq;->b:Lfoh;

    iput-object p4, p0, Lfnq;->c:Landroid/app/Activity;

    iput-object p5, p0, Lfnq;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    check-cast p1, Lfny;

    .line 63
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0}, Lfnp;->a(Lfnp;)Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmir;->a(Ljava/lang/Boolean;)V

    .line 65
    invoke-static {}, Lcom/santander/app/MinhaConta;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lfnq;->e:Lfnp;

    iget-object v1, p0, Lfnq;->a:Lfnx;

    iget-object v2, p0, Lfnq;->b:Lfoh;

    invoke-static {v0, v1, p1, v2}, Lfnp;->a(Lfnp;Lfnx;Lfny;Lfoh;)V

    .line 183
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->f(Lfny;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 71
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->c(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v2}, Lfnp;->a(Lfnp;Z)Z

    .line 73
    iget-object v0, p0, Lfnq;->c:Landroid/app/Activity;

    const v3, 0x7f04016a

    invoke-static {v0, v3}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    .line 76
    :cond_1
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->e(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 78
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v2}, Lfnp;->a(Lfnp;Z)Z

    .line 79
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v1}, Lfnp;->a(Lfnp;I)I

    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lfnq;->c:Landroid/app/Activity;

    const-class v4, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v3, "Nome"

    invoke-virtual {p1}, Lfny;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v3, "cpf"

    iget-object v4, p0, Lfnq;->a:Lfnx;

    invoke-virtual {v4}, Lfnx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v3, "selecionaActivity"

    iget-object v4, p0, Lfnq;->e:Lfnp;

    invoke-static {v4}, Lfnp;->b(Lfnp;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object v3, p0, Lfnq;->c:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    :cond_2
    :goto_1
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->g(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v1}, Lfnp;->a(Lfnp;Z)Z

    .line 94
    iget-object v0, p0, Lfnq;->c:Landroid/app/Activity;

    check-cast v0, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-virtual {v0, v2}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->a(Z)V

    .line 95
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0}, Lfnp;->a(Lfnp;)Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lfny;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "108"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmir;->a(Ljava/lang/Boolean;)V

    .line 97
    :cond_3
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->l(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v2}, Lfnp;->a(Lfnp;Z)Z

    .line 99
    iget-object v0, p0, Lfnq;->c:Landroid/app/Activity;

    const v3, 0x7f04016d

    invoke-static {v0, v3}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    .line 158
    :cond_4
    :goto_2
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->j(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 160
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v1}, Lfnp;->a(Lfnp;Z)Z

    .line 161
    iget-object v0, p0, Lfnq;->c:Landroid/app/Activity;

    check-cast v0, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->a(Z)V

    .line 169
    :cond_5
    :goto_3
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0}, Lfnp;->c(Lfnp;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    new-instance v0, Lfwr;

    invoke-direct {v0}, Lfwr;-><init>()V

    .line 171
    invoke-virtual {p1}, Lfny;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfwr;->j(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lfny;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfwr;->p(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lfnq;->e:Lfnp;

    iget-object v4, p0, Lfnq;->a:Lfnx;

    invoke-virtual {v4}, Lfnx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lfnp;->a(Lfwr;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {p1}, Lfny;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "S"

    invoke-virtual {p1}, Lfny;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_6
    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Lmiq;->j(Z)V

    .line 178
    :cond_7
    iget-object v0, p0, Lfnq;->b:Lfoh;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lfoh;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 86
    :cond_8
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->d(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v2}, Lfnp;->a(Lfnp;Z)Z

    .line 88
    iget-object v0, p0, Lfnq;->c:Landroid/app/Activity;

    const v3, 0x7f04016c

    invoke-static {v0, v3}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 101
    :cond_9
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->k(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 102
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v2}, Lfnp;->a(Lfnp;Z)Z

    .line 103
    iget-object v0, p0, Lfnq;->c:Landroid/app/Activity;

    const v3, 0x7f04016e

    invoke-static {v0, v3}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 105
    :cond_a
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->h(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v2}, Lfnp;->a(Lfnp;Z)Z

    .line 107
    iget-object v0, p0, Lfnq;->e:Lfnp;

    iget-object v3, p0, Lfnq;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Lfny;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfnq;->a:Lfnx;

    invoke-virtual {v5}, Lfnx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lfnp;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 108
    :cond_b
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->b(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {p1}, Lfny;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v2}, Lfnp;->a(Lfnp;Z)Z

    .line 116
    iget-object v0, p0, Lfnq;->e:Lfnp;

    const/4 v5, 0x2

    invoke-static {v0, v5}, Lfnp;->a(Lfnp;I)I

    .line 118
    iget-object v0, p0, Lfnq;->c:Landroid/app/Activity;

    check-cast v0, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->a(Z)V

    .line 119
    new-instance v0, Lfwr;

    invoke-direct {v0}, Lfwr;-><init>()V

    .line 120
    invoke-virtual {p1}, Lfny;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lfwr;->j(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lfny;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lfwr;->p(Ljava/lang/String;)V

    .line 122
    iget-object v5, p0, Lfnq;->e:Lfnp;

    iget-object v6, p0, Lfnq;->a:Lfnx;

    invoke-virtual {v6}, Lfnx;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lfnp;->a(Lfwr;Ljava/lang/String;)V

    .line 124
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfyl;

    .line 126
    invoke-virtual {v0}, Lfyl;->b()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-virtual {v0}, Lfyl;->a()Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 131
    :cond_c
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lfnq;->c:Landroid/app/Activity;

    const-class v5, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;

    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v3, "Nome"

    invoke-virtual {p1}, Lfny;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v3, "cpf"

    iget-object v5, p0, Lfnq;->a:Lfnx;

    invoke-virtual {v5}, Lfnx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v3, "selecionaActivity"

    iget-object v5, p0, Lfnq;->e:Lfnp;

    invoke-static {v5}, Lfnp;->b(Lfnp;)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v3, "listaContas"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    const-string v3, "codRetorno"

    invoke-virtual {p1}, Lfny;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v3, p0, Lfnq;->c:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 139
    :cond_d
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->a(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v2}, Lfnp;->a(Lfnp;Z)Z

    .line 142
    iget-object v0, p0, Lfnq;->e:Lfnp;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lfnp;->a(Lfnp;I)I

    .line 143
    iget-object v0, p0, Lfnq;->c:Landroid/app/Activity;

    check-cast v0, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->a(Z)V

    .line 144
    new-instance v0, Lfwr;

    invoke-direct {v0}, Lfwr;-><init>()V

    .line 145
    invoke-virtual {p1}, Lfny;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfwr;->j(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lfny;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfwr;->p(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lfnq;->e:Lfnp;

    iget-object v4, p0, Lfnq;->a:Lfnx;

    invoke-virtual {v4}, Lfnx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lfnp;->a(Lfwr;Ljava/lang/String;)V

    .line 150
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lfnq;->c:Landroid/app/Activity;

    const-class v4, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v3, "Nome"

    invoke-virtual {p1}, Lfny;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v3, "cpf"

    iget-object v4, p0, Lfnq;->a:Lfnx;

    invoke-virtual {v4}, Lfnx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v3, "selecionaActivity"

    iget-object v4, p0, Lfnq;->e:Lfnp;

    invoke-static {v4}, Lfnp;->b(Lfnp;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v3, "codRetorno"

    invoke-virtual {p1}, Lfny;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v3, p0, Lfnq;->c:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 162
    :cond_e
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-virtual {v0, p1}, Lfnp;->i(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lfnq;->e:Lfnp;

    invoke-static {v0, v2}, Lfnp;->a(Lfnp;Z)Z

    .line 165
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lfnq;->c:Landroid/app/Activity;

    const-class v4, Lcom/santander/app/meuperfil/activity/PrimeiroAcessoBoasVindasActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    iget-object v3, p0, Lfnq;->d:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_f
    move v0, v1

    .line 176
    goto/16 :goto_4

    .line 180
    :cond_10
    iget-object v0, p0, Lfnq;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Lfny;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 181
    iget-object v0, p0, Lfnq;->b:Lfoh;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lfoh;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
